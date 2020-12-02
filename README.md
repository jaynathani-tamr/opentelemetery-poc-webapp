#

## Add OpenTelemeter Agent

```sh
export JAVA_OPTS="$JAVA_OPTS -javaagent:/opentelemetry-javaagent-all.jar "
```

## Add OpenTelemeter API

### Gradle
Ref: https://github.com/open-telemetry/opentelemetry-java#gradle

```
implementation('io.opentelemetry:opentelemetry-api:0.10.0')
```

### Maven

Ref: https://github.com/open-telemetry/opentelemetry-java#maven

```xml
<dependencies>
  <dependency>
    <groupId>io.opentelemetry</groupId>
    <artifactId>opentelemetry-api</artifactId>
    <version>0.10.0</version>
  </dependency>
</dependencies>
```

## Configure Logging Pattern

```
logging.pattern.console = %d{yyyy-MM-dd HH:mm:ss} - %logger{36} - %msg t:%X{traceId} s:%X{spanId} %n
```
