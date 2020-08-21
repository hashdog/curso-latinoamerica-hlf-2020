# FROM ubuntu:18.04

# WORKDIR /curso

# RUN apt-get update -y

# RUN apt-get install -y curl sudo tzdata

# #INSTALLING UTILS
# RUN apt-get install -y unzip wget git tree telnetd httping tcptraceroute hping3

# RUN wget http://pingpros.com/pub/tcpping -o /usr/bin/tcpping && chmod 755 /usr/bin/tcpping

# #INSTALLING JAVA
# RUN apt-get install openjdk-8-jre-headless -y
# ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# #INSTALLING MAVEN
# RUN mkdir -p /opt/apache-maven/ && wget https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip && unzip apache-maven-3.6.3-bin.zip && mv apache-maven-3.6.3/* /opt/apache-maven/ && rm -rf apache-maven-3.6.3*

# ENV M2_HOME=/opt/apache-maven
# ENV PATH=${M2_HOME}/bin:${PATH}

# #INSTALLING DOCKER#
# RUN apt-get install -y \
#   apt-transport-https \
#   ca-certificates \
#   curl \
#   gnupg-agent \
#   software-properties-common

# RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# RUN apt-key fingerprint 0EBFCD88

# RUN add-apt-repository \
#   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) \
#   stable"

# RUN apt-get install -y docker-ce docker-ce-cli containerd.io -y

# # #
# #DOCKER-COMPOSE
# RUN  curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose

# #NODE
# RUN apt-get install -y nodejs

# #GOLANG
# RUN cd /tmp \
#     curl -O https://dl.google.com/go/go1.12.linux-amd64.tar.gz \
#     tar -xvf go1.12.linux-amd64.tar.gz \
#     mv go /usr/local \
#     echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile \
#     source ~/.profile \
#     echo "GOLANG version ..."
# # #GOPATH Directory
# RUN mkdir go
# ENV GOPATH=/curso/go
# ENV PATH=${PATH}:$GOPATH/bin


# # #FABRI
# COPY /var/run/docker.sock /var/run/docker.sock

# ENV PATH=${PATH}:/curso/fabric-samples/bin

# CMD ["/bin/bash"]


FROM ubuntu:18.04

WORKDIR /curso

RUN apt-get update -y

RUN apt-get install -y curl sudo tzdata

#RUN curl  https://raw.githubusercontent.com/blockchainempresarial/curso-hyperledger-fabric/master/scripts/prerreq.sh --output /usr/bin/prepare_env.sh

COPY setup.sh /usr/bin/prepare_env.sh

RUN chmod +x /usr/bin/prepare_env.sh

RUN /usr/bin/prepare_env.sh


CMD ["/bin/bash"]
