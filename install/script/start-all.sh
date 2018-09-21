#!/bin/bash

zk0=/home/xxh/wkspc/zookeeper/zookeeper0
zk1=/home/xxh/wkspc/zookeeper/zookeeper1
zk2=/home/xxh/wkspc/zookeeper/zookeeper2

$zk0/bin/zkServer.sh start $zk0/conf/zoo.cfg
$zk1/bin/zkServer.sh start $zk1/conf/zoo.cfg
$zk2/bin/zkServer.sh start $zk2/conf/zoo.cfg


jps

