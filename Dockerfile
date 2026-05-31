FROM --platform=linux/arm64 ubuntu:latest
RUN apt update && apt install -y tar bash
COPY backup.sh /usr/local/bin/backup.sh
RUN chmod +x /usr/local/bin/backup.sh && \
    sed -i 's/\r$//' /usr/local/bin/backup.sh
ENTRYPOINT ["/usr/local/bin/backup.sh"]
