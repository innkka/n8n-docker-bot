FROM n8nio/n8n:latest

# Install custom npm packages like Cheerio
USER root
RUN apt-get update && apt-get install -y \
  nano \
  && rm -rf /var/lib/apt/lists/*

USER node
RUN npm install cheerio
