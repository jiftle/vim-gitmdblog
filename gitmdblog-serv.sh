#!/bin/bash
# -----------------------------------------------------------------
# FileName: gitmdblog-serv.sh
# Date: 2020-01-06
# Author: jiftle
# Description: GitMdBlog笔记预览服务
# -----------------------------------------------------------------
# ----------- 启动服务 -----------
echo "---> GitMdBlog笔记预览服务，开始启动..."
cd ~/gitmdblog/
nohup ./gitmdblog > /dev/null 2>&1 &
echo "---> GitMdBlog笔记预览服务[http://127.0.0.1:8001]，启动完成。"

