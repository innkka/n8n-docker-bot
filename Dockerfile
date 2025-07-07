FROM n8nio/n8n:latest

USER root

# Create a folder for custom modules and install cheerio there
RUN mkdir -p /data/node_modules \
 && cd /data \
 && npm install cheerio

USER node
