echo -e "1\n\n${STATUS_URL}\n\n&{USERNAME}\n${PASSWORD}\n\n" | sh -c /opt/status.sh c
sh -c /opt/entrypoint.sh
