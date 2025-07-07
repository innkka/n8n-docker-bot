FROM n8nio/n8n:latest

# Switch to root to install modules
USER root

# Install cheerio inside the n8n user folder
RUN cd /usr/local/lib/node_modules/n8n \
  && npm install cheerio

# Switch back to n8n user
USER node
