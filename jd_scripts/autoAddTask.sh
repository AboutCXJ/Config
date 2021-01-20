#!/bin/sh

#@shylocks仓库脚本
if [ ! -d "/shylocks/" ]; then
    echo "未检查到shylocks仓库脚本，初始化下载相关脚本"
    git clone https://github.com/shylocks/Loon.git /shylocks
else
    echo "更新shylocks脚本相关文件"
    git -C /shylocks reset --hard
    git -C /shylocks pull --rebase
fi

# 复制京东相关文件
cp -f /shylocks/jd*.js /scripts/

# 合并两份cron
cat  /shylocks/docker/crontab_list.sh >>/scripts/docker/merged_list_file.sh



# 删除惊喜工厂任务
sed -ie '/jd_dreamFactory.js/d' /scripts/docker/merged_list_file.sh
