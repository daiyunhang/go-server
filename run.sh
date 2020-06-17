#!/bin/bash
###
 # @Author: Lucas.
 # @Create: 2020-06-17 02:22:22
 # @LastTime: 2020-06-17 02:22:22
 # @LastEdit: Lucas.
 # @FilePath: \server\run.sh
 # @Description: linux
 ###

case $1 in
	start)
		nohup ./server_admin 2>&1 >> info.log 2>&1 /dev/null &
		echo "服务已启动..."
		sleep 1
	;;
	stop)
		killall server_admin
		echo "服务已停止..."
		sleep 1
	;;
	restart)
		killall server_admin
		sleep 1
		nohup ./server_admin 2>&1 >> info.log 2>&1 /dev/null &
		echo "服务已重启..."
		sleep 1
	;;
	*)
		echo "$0 {start|stop|restart}"
		exit 4
	;;
esac
