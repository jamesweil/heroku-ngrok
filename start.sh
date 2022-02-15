echo -e "1\n\n${STATUS_URL}\n\n&{USERNAME}\n${PASSWORD}\n\n" | bash /opt/status.sh c
bash /opt/entrypoint.sh
