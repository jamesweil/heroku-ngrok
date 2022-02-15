FROM alpine:latest

ADD entrypoint.sh /opt/entrypoint.sh
ADD status.sh /opt/status.sh
ADD start.sh /opt/start.sh

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x /opt/entrypoint.sh /opt/status.sh /opt/start.sh
ENTRYPOINT ["sh", "-c", "/opt/start.sh"]
# CMD echo -e "1\n\n${STATUS_URL}\n\n${USERNAME}\n${PASSWORD}\n\n" | bash /opt/status.sh c
