FROM mongo:4.2.10

RUN apt-get update && apt-get install -y --no-install-recommends openssl && rm -rf /var/lib/apt/lists/*

VOLUME /data
EXPOSE 27001 27002 27003

COPY setup.sh .
COPY healthcheck.sh .

CMD ./setup.sh
HEALTHCHECK --interval=60s --timeout=10s CMD ./healthcheck.sh
