FROM dispel4py/storm:0.10.0
MAINTAINER dispel4py

EXPOSE 6700
EXPOSE 6701
EXPOSE 6702
EXPOSE 6703
EXPOSE 8000

USER root
RUN apt-get update
RUN yes | apt-get install python-pip
RUN pip install networkx

RUN /usr/bin/config-supervisord.sh supervisor
RUN /usr/bin/config-supervisord.sh logviewer
CMD /usr/bin/start-supervisor.sh
