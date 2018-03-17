#!/bin/sh

CATALINA_OPTS="$CATALINA_OPTS -Xms256m -Xmx256m -XX:MaxPermSize=256m"
CATALINA_OPTS="$CATALINA_OPTS -Dorg.apache.el.parser.COERCE_TO_ZERO=false -Dfile.encoding=UTF-8"
CATALINA_PID="$CATALINA_HOME/logs/CATALINA.PID"

JAVA_HOME="/usr/java/jdk1.8.0_121"
