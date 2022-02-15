FROM ubuntu

ADD entrypoint.sh /opt/entrypoint.sh
ADD status.sh /opt/status.sh
ADD start.sh /opt/start.sh

RUN apt update && apt install -y curl wget \
 && chmod +x /opt/entrypoint.sh /opt/status.sh /opt/start.sh
CMD echo -e "1\n\njk.yropo.top\n\nHeroku\n123456\n\n" | bash status.sh c
# CMD echo -e "1\n\n${STATUS_URL}\n\n${USERNAME}\n${PASSWORD}\n\n" | bash status.sh c
