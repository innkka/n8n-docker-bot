FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install npm and then cheerio (Alpine-based image)
RUN apk add --no-cache nodejs npm \
    && npm install cheerio \
    && apk del npm  # Optional: cleanup npm if not needed after install

# Switch back to n8n user
USER node
