FROM python:3.7
RUN apt update && apt install wget curl git vim -y
RUN pip install docker
RUN pip install paramiko
RUN git clone https://github.com/fjacob21/plex-monitor.git /plex-monitor
COPY configs.json /plex-monitor
WORKDIR /plex-monitor
CMD [ "python", "/plex-monitor/plexmonitor.py" ]

