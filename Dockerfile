FROM alpine:latest
WORKDIR /app
RUN apk add --no-cache bash coreutils gawk
COPY scripts/analyze.sh /app/analyze.sh
RUN chmod +x analyze.sh
CMD ["./analyze.sh", "/app/access.log"]
