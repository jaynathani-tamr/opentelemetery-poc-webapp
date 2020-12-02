FROM tomcat:9.0

ADD ./opentelemetry/opentelemetry-javaagent-all.jar /opentelemetry-javaagent-all.jar

# ADD ./signalfx/signalfx-tracing.jar /signalfx-tracing.jar

ADD ./build/libs/ROOT.war /usr/local/tomcat/webapps/ROOT.war

ENV JAVA_OPTS=" $JAVA_OPTS -javaagent:/opentelemetry-javaagent-all.jar "
ENV JAVA_OPTS=" $JAVA_OPTS -Dotel.instrumentation.spring-web.enabled=true "
ENV JAVA_OPTS=" $JAVA_OPTS -Dotel.instrumentation.jdbc.enabled=true "
ENV JAVA_OPTS=" $JAVA_OPTS -Dio.opentelemetry.javaagent.slf4j.simpleLogger.defaultLogLevel=debug "
