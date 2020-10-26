FROM ubuntu:20.04

RUN apt-get update && apt-get install -y python3-pip
RUN pip3 install influxdb
RUN useradd -ms /bin/bash ginlong
COPY ginlong-listen.py /home/ginlong/ginlong-listen.py

USER ginlong
WORKDIR /home/ginlong

CMD ["python3", "/home/ginlong/ginlong-listen.py"]
