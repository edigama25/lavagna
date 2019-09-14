FROM maven:3.6.1-jdk-8 as base
RUN mkdir /app
WORKDIR /app
COPY /project /app
run mvn verify

FROM alpine
RUN apk add openjdk8-jre
COPY --from=base /app /app
COPY /script.sh /app
WORKDIR /app
ENTRYPOINT ./script.sh
