FROM alpine:lastest

ADD entrypoint.sh /opt/entrypoint.sh
ADD status.sh /opt/status.sh
ADD start.sh /opt/start.sh

RUN apt update && apt install -y curl wget \
 && chmod +x /opt/entrypoint.sh /opt/status.sh /opt/start.sh
ENTRYPOINT ["sh", "-c", "/opt/start.sh"]
# CMD echo -e "1\n\n${STATUS_URL}\n\n${USERNAME}\n${PASSWORD}\n\n" | bash /opt/status.sh c
