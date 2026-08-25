FROM ghcr.io/24kbrother/aura-grid:latest

USER root

RUN apk add --no-cache redis 2>/dev/null || \
    (apt-get update && apt-get install -y redis-server && rm -rf /var/lib/apt/lists/*)

COPY run.sh /run.sh
RUN chmod +x /run.sh

ENV NODE_ENV=production
ENV PORT=8500
ENV REDIS_URL=redis://127.0.0.1:6379
ENV DATABASE_URL=file:/app/prisma/data/prod.db
ENV FLOORPLANS_DIR=/app/floorplans

ENTRYPOINT []
CMD ["/run.sh"]
