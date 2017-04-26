FROM java:9
COPY src /home/root/javahelloworld/src
#COPY /root/.bashrc /root
WORKDIR /home/root/javahelloworld
ENV FOO bar
RUN echo "ENV" && env
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
