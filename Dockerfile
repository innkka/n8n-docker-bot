# Pin to the exact version you're running now (see n8n UI → About → Version)
# e.g. 1.78.1 — replace <YOUR_VERSION> below
FROM n8nio/n8n:1.105.4

# Quiet the “permissions … too wide” warning (not required, just cleaner)
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

USER root

# Install cheerio into /data so Code nodes can require('cheerio')
# (prefix is cleaner than cd && install)
RUN mkdir -p /data/node_modules \
 && npm install --omit=dev --prefix /data cheerio

USER node
