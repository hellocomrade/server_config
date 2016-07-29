#!/bin/sh
#
#ulimit -n 2048
#
JAVA_HOME="/usr/java/latest/jre"
export JAVA_HOME
NORMAL="-Xmx4096m -Xms256m -server"
#MAX_PERM_GEN="-XX:MaxPermSize=512m"
GC="-XX:+UseParallelGC"
SoftRef="-XX:SoftRefLRUPolicyMSPerMB=36000"
HEADLESS="-Djava.awt.headless=true"
JAVA_OPTS="$CONTENT_ROOT $NORMAL $MAX_PERM_GEN $HEADLESS $GC $SoftRef"
export JAVA_OPTS

#This is set up for multisite Tomcat containers with single tomcat binary
#this file under /tomcat_root/applications/bin/, all other files can be removed
