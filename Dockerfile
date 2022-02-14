FROM ubuntu:18.04
WORKDIR /srv/app/
RUN apt update && apt install -y python3 python3-pip
RUN pip3 install -U pip
RUN pip3 install -U Flask Psycopg2 psycopg2-binary ConfigParser
COPY web.py /srv/app/ 
COPY conf/web.conf /srv/app/conf/
ENTRYPOINT python3 /srv/app/web.py 
CMD python3 /srv/app/web.py 


