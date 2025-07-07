FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install cheerio globally and ensure it's accessible to the node user
RUN npm install -g cheerio

# Switch back to n8n user
USER node
