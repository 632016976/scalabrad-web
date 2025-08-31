FROM mcr.microsoft.com/devcontainers/base:ubuntu

# 安装 Java 8 和 sbt
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk curl gnupg && \
    echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" | tee /etc/apt/sources.list.d/sbt.list && \
    curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | tee /etc/apt/trusted.gpg.d/sbt.asc && \
    apt-get update && \
    apt-get install -y sbt

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH
