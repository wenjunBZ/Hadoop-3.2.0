
# HADOOP 大数据学习笔记

## 3. 第三章学习

### 1.1查看hadoop集群的基本信息

#### 1.1.1浏览器方式观察 Hadoop 3.2 中，端口为9870

#### 1.1.2命令行输入

在集群服务器终端，输入相关查询命令 hdfs dfsadmin -report -[cmd]
| 命令|解释|
|-|-|
|hdfs dfsadmin -report     | 输出文件文件系统的基本信息以及相关数据统计|
|hdfs dfsadmin -report  -live | 输出文件系统中在线节点的基本信息以及相关数据统计|
|hdfs dfsadmin -report  -dead | 输出文件系统中失效节点的基本信息以及相关数据统计| 
|hdfs dfsadmin -report  -decommissioning | 输出文件系统中停用节点的基本信息以及相关数据统计|

### HDFS 的基本操作

#### 创建新的目录

mkdir
使用方法：hdfs fs -mkdir [paths]
接受路径指定的uri作为参数，创建这些目录。其行为类似于Unix的mkdir -p，它会创建路径中的各级父目录。

示例：

hdfs fs -mkdir /user/hadoop/dir1 /user/hadoop/dir2
hhdfs fs -mkdir hdfs://host1:port1/user/hadoop/dir hdfs://host2:port2/user/hadoop/dir
返回值：

成功返回0，失败返回-1。

#### 上传文件与下载文件

##### 文件上传命令

|命令|解释|
|-|-|
|hdfs dfs -copyFromLocal [-f][-p] [localsrc]..[dst]  | 将文件从本地文件系统复制到HDFS文件系统。主要参数[localsr]为本地文件路径，[src] 为复制的目标路径|
|hdfs  dfs -moveFromLocal [localsrc] [dst]| 将文件从本地文件系统移动到HDFS文件系统。主要参数[localsrc]为本地文件路径，[dst] 为复制的目标路径|
|hdfs dfs -put [localsrc]... [dst]|主要参数[localsrc]为本地文件路径，[dst] 为复制的目标路径 。从本地文件系统中复制单个或者多个源路径到目标文件系统。也支持从标准输入中读取输入写入目标文件系统|

! 注意，使用moveFromLocal 命令时，是移动的意思，本地文件将不存在，相当于剪切

##### 文件下载命令

|命令|解释|
|-|-|
|hdfs dfs -copyToLocal [src]... [localdst]|将文件从HDFS文件系统复制到本地文件系统。主要参数[src]为HDFS文件系统路径，[localdst]为本地文件系统路径|
|hdfs dfs -get [-p] [-ignoreCrc] [src]...[localdst]|获取HDFS文件系统上指定路径的文件到本地文件系统。主要参数[src]为HDFS文件系统路径，[localdst]为本地文件系统路径|

！注意，两种执行方式，执行后HDFS文件系统中，文件仍然存在。不是剪切

##### 查看文件内容

|命令|解释|
|-|-|
|hdfs dfs -cat [src]|查看HDFS文件内容，主要参数[src]指定文件路径|
|hdfs dfs -tail [file]|输出HDFS文件最后1024子节，主要参数[file]指定文件|

##### 删除文件或者目录

|命令|解释|
|-|-|
|hdfs dfs -rm [-r/-R] [src]| 删除HDFS上的文件，主要参数r|R用来递归删除，[src]指定删除文件的路径|
|hdfs dfs -rmdir [dir]|如果删除的是一个目录，则可以用该方法，dir参数为指定目录路径|
