FROM alpine:latest
RUN apk add --no-cache curl unzip
RUN curl -L https://github.com -o xray.zip && \
    unzip xray.zip && mv xray /usr/local/bin/ && rm -f xray.zip
COPY config.json /etc/xray/config.json
CMD ["/usr/local/bin/xray", "-config", "/etc/xray/config.json"]
