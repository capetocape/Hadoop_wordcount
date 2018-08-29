#!/usr/bin/bash

streaming_jar=[hadoop服务器的jar包]
input=[HDFS上数据文件的绝对路径]
output=[HDFS结果绝对路径]
hadoop fs -rmr $output
hadoop jar ${streaming_jar} \
 	-files mapper.py,reducer.py \
	-jobconf mapred.job.priority="VERY_HIGH" \
	-jobconf mapred.map.tasks=5 \
        -jobconf mapred.job.map.capacity=5 \
	-jobconf mapred.job.name="Xiaochenjie.streaming_wordcount" \
        -input $input \
        -output $output \
        -mapper "python mapper.py" \
 	-reducer "python reducer.py" 
if [ $? -ne 0 ];then
	echo "Xiaochenjie.streaming_wordcount job failed"
	exit 1
fi 
