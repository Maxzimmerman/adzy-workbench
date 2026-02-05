FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      postgresql-client \
      bash \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .
COPY pod.sh /usr/local/bin/pod
RUN chmod +x /usr/local/bin/pod

EXPOSE 4001

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]