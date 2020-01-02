FROM python:3.7
RUN apt update && apt install wget curl git vim -y
RUN pip3 install docker
RUN pip3 install paramiko
RUN git clone https://github.com/fjacob21/plex-monitor.git /plex-monitor
COPY configs.json /plex-monitor
ENTRYPOINT ["/plex-monitor/plexmonitor.py"]

