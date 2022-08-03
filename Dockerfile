FROM ubuntu:latest
WORKDIR
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y python3
RUN apt-get install -y python3-pip && apt-get install -y python3-venv
RUN apt-get install -y git
RUN apt-get install -y ssh
RUN apt-get install -y rsyslog
RUN mkdir /opt/telegraf && cd /opt/telegraf
RUN python3 -m venv yang_telemetry
RUN source yang_telemetry/bin/activate
RUN pip install -U pip
RUN git clone https://github.com/AngelIV23/tig_yang_telemetry.git
RUN python3 -m venv tig_yang_telemetry
RUN source tig_yang_telemetry/bin/activate
EXPOSE 3000
EXPOSE 57500
