FROM openjdk:17
VOLUME /tmp
ADD build/libs/*.jar demo.jar
EXPOSE 8888
RUN bash -c 'touch /demo.jar'
ENTRYPOINT ["java","-jar","demo.jar" ]