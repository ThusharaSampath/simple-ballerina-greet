FROM ballerina/ballerina:2201.8.5 as build

USER root

COPY . /home/app/

WORKDIR /home/app/

RUN bal build

FROM ballerina/jvm-runtime:2.0

RUN addgroup troupe \
    && adduser -S -s /bin/bash -g 'ballerina' -G troupe -D ballerina \
    && apk add --update --no-cache bash \
    && rm -rf /var/cache/apk/*

COPY --from=build /home/app/target/bin/*.jar /home/ballerina/app.jar

WORKDIR /home/ballerina

USER 10001

ENTRYPOINT ["java", "-jar", "app.jar"]