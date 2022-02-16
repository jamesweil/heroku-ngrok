FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
ADD ngrok.sh /opt/ngrok.sh
RUN apt update && apt install -y \
    ssh wget unzip vim 
EXPOSE 80 443 3306 5432 8888
CMD  /opt/ngrok.sh
