#!/bin/bash

zk0=/home/xxh/wkspc/zookeeper/zookeeper0
zk1=/home/xxh/wkspc/zookeeper/zookeeper1
zk2=/home/xxh/wkspc/zookeeper/zookeeper2

$zk0/bin/zkServer.sh status
$zk1/bin/zkServer.sh status
$zk2/bin/zkServer.sh status


jps