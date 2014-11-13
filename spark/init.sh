#!/bin/bash

pushd /root


# Github tag:
mkdir spark
pushd spark
git init
git remote add origin http://github.com/apache/spark.git
git fetch origin
git checkout branch-1.1
SPARK_HADOOP_VERSION=2.2.0 SPARK_YARN=true sbt/sbt clean assembly
sbt/sbt publish-local
popd


popd
