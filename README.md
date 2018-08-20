# Hadoop_wordcount
This is a  "hello world" program for Hadoop

这是Hadoop的一个入门例子——wordcount，功能：就是统计文档中的所有单词，输出每个单词及其对应的个数。

1.本地运行
------------------------
### mapper.py
该程序是把一个文件中所有单词提取出来，各占一行，结果如：  
one 1  
three 1  
two 1  
one 1  

### sort  
命令行下的指令，把单词进行排序（字典序），结果如：  
one 1  
three 1  
two 1  
one 1  
  
------->  

one 1  
one 1  
three 1  
two 1 

### reducer.py  
该程序是把排序好的单词进行统计，结果如：  
one 1  
one 1  
three 1  
two 1  

------->  

one 2  
three 1  
two 1  

本地运行过程：  
$ echo ‘one three two one’ | python mapper.py  
$ echo ‘one three two one’ | python mapper.py | sort   
$ echo ‘one three two one’ | python mapper.py | sort | python reducer.py



2.hadoop服务器上运行
------------------------
### run.sh    
这是一个脚本，让MapReduce程序在Hadoop集群上运行  
先把datas文件夹传到hadoop服务器上:  
$hadoop fs -put   [本地datas路径]   [HDFS路径]  
传完之后，就可以运行run.sh了:  
$sh run.sh
  
环境：
------------------------
=============================================  
  
python  **version** = '2.7'  #也可以使用3.x以上版本，相应的语法区别改一下就行了
