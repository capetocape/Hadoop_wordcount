# Hadoop_wordcount
This is a  "hello world" program for Hadoop

这是hadoop的一个入门例子——wordcount，功能：就是统计文档中的所有单词，输出每个单词对应的个数。

1.本地运行
------------------------
### mapper.py
该程序是把一个文件中所有单词提取出来，各占一行，结果如：  
one 1  
three 1  
two 1  
one 1

reduce.py是把排序好的单词进行统计，结果如：
one 1
one 1
three 1
two 1

------->

one 2
three 1
two 1

本地运行过程：
# echo ‘one three two one’ | python mapper.py
# echo ‘one three two one’ | python mapper.py | sort 
# echo ‘one three two one’ | python mapper.py | sort | python reducer.py



3.hadoop服务器上运行
run.sh是一个脚本，让map/reduce程序在hadoop集群上运行
先把datas文件夹传到hadoop服务器上  #hadoop fs -put /da1/Xiaochenjie/wordcount/datas /home/hdp-reader-vqt/xiaochenjie/wordcount_input_and_output
传完之后，就可以运行run.sh了       #sh run.sh
