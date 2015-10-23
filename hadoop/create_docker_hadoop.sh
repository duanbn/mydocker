#!/bin/sh

ip=$1
name=$2

expose="--expose=22 --expose=9000 --expose=8099 --expose=50070"

pipework docker1 -i eth1 $(docker run -d --name=$name -P $expose duanbn/hadoop /etc/init.d/ssh start -D) 192.168.68.$ip/24@192.168.68.1
