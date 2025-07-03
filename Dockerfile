FROM n8nio/n8n:latest

# Install custom npm packages like Cheerio
USER root
RUN apk update && apk add --no-cache nano
  nano \
  && rm -rf /var/lib/apt/lists/*

USER node
RUN npm install cheerio
