FROM ghcr.io/viren070/aiostreams:latest

# Ensure /app/data exists and is writable
USER root
RUN mkdir -p /app/data && chown -R node:node /app/data

# Switch back to the node user (safe for production)
USER node

EXPOSE 7860

ENV PORT=7860
