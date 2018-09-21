# Apache ZooKeeper
![alt text](https://zookeeper.apache.org/images/zookeeper_small.gif "ZooKeeper")

For the latest information about Apache ZooKeeper, please visit our website at:

   http://zookeeper.apache.org/

and our wiki, at:

   https://cwiki.apache.org/confluence/display/ZOOKEEPER

Full documentation for this release can also be found in docs/index.html

---------------------------
Packaging/release artifacts

The release artifact contains the following jar file at the top level:

zookeeper-<version>.jar         - legacy jar file which contains all classes
                                  and source files. Prior to version 3.3.0 this
                                  was the only jar file available. It has the 
                                  benefit of having the source included (for
                                  debugging purposes) however is also larger as
                                  a result

The release artifact contains the following jar files in "dist-maven" directory:

zookeeper-<version>.jar         - bin (binary) jar - contains only class (*.class) files
zookeeper-<version>-sources.jar - contains only src (*.java) files
zookeeper-<version>-javadoc.jar - contains only javadoc files

These bin/src/javadoc jars were added specifically to support Maven/Ivy which have 
the ability to pull these down automatically as part of your build process. 
The contents of the legacy jar and the bin + sources jars are the same.

As of version 3.3.0, the bin, sources and javadoc jars contained in the
dist-maven directory are deployed to the central repository after the release
is voted on and approved by the Apache ZooKeeper PMC:

  https://repo1.maven.org/maven2/org/apache/zookeeper/zookeeper/

# Contributing
We always welcome new contributors to the project! See [How to Contribute](https://cwiki.apache.org/confluence/display/ZOOKEEPER/HowToContribute) for details on how to submit patch through pull request and our contribution workflow.

# Reading notes

## 源码环境

zk　真是醉了，还在用ant.(因为我没用过ant,也不会用)

zk。源码。IDEA 安排：

---

- 第一步
```
 git clone git@github.com:apache/zookeeper.git
 cd zookeeper
 ant eclipse
```

- 第二步

idea 中打开　zookeeper project

file -> new -> project from existing source -> 选中目录 -> 选择eclipse -> ok

[参考](https://blog.csdn.net/fujianfafu/article/details/80307240)

---


## bg:

     zookeeper是为分布式应用提供分布式协作服务的开源软件。它提供了一组简单的原子操作，分布式应用可以基于这些原子操作来实现更高层次的同步服务，配置维护，组管理和命名。zookeeper的设计使基于它的编程非常容易，若我们熟悉目录树结构的文件系统，也会很容易使用zookeeper的数据模型样式。它运行在java上，有java和c的客户端。

　　协作服务因难于获取正确而臭名远扬，他们特别易于出错如竞争条件和死锁。zookeeper的动机是减轻分布式应用中从零开始实现协作服务的压力。

## 优势：

是一个分布式协调服务的开源框架。主要用来解决分布式集群中应用系统的一致性问题。

本质上是一个分布式的小文件存储系统，提供基于类似文件系统的目录树方式的数据存储。并且可以对树中的节点进行有效管理，从而用来维护和监控你存储的数据的状态变化。通过监控这些数据状态的变化，从而可以达到基于数据的集群管理。诸如：统一命名服务、分布式配置管理、分布式消息队列、分布式锁、分布式协调等功能。

1. 最终一致性： 每个server保存一份相同的数据脚本，client无论连接到哪个server，展示的数据都是一致的。

2. 顺序性：包括全局有序和偏序两种，全局有序是指如果一台服务器上消息a在消息b前发布，则在所有server上消息a都将在消息b前被发布；偏序是指如果一个消息b在消息a后被同一个发送者发布,a必将排在b的前面

3. 高可用：如果消息被其中一台服务器接受，那么将被所有的服务器接受

4. 原子性：一次数据更新要么成功(半数以上节点成功)，要么失败，不存在中间状态

5. 实时性：Zookeeper保证客户端将在一个时间间隔范围内获得服务器的更新信息，或者服务器失效的信息。

## 入口：

zkServer.sh 启动脚本


---

9.12
先做akka