FROM ubuntu:18.04
RUN apt-update
RUN apt-upgrade -y
RUN apt install wget
RUN wget -q https://github.com/pion/turn/releases/download/1.0.3/simple-turn-linux-amd64
RUN export USERS='user=password bartixxx=23042001'
RUN export REALM=217.182.74.118
RUN export UDP_PORT=3478
RUN chmod +x simple-turn-linux-amd64
ENTRYPOINT ["bash", "simple-turn-linux-amd64"]
