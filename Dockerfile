FROM n8nio/n8n:latest

# Install cheerio globally
USER root
RUN npm install -g cheerio

# Switch back to n8n user
USER node
