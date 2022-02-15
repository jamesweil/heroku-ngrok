FROM ubuntu

ADD entrypoint.sh /opt/entrypoint.sh
ADD status.sh /opt/status.sh
ADD start.sh /opt/start.sh

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x /opt/entrypoint.sh /opt/status.sh /opt/start.sh

CMD echo -e "1\n\njk.yropo.top\n\nrailway\n7749\n\n" | bash status.sh c
