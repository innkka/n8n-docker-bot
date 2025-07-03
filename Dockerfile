FROM n8nio/n8n:latest

# Switch to root to install packages (if ever needed)
USER root

# Optional: install your custom packages here using appropriate package manager (alpine uses apk)
# RUN apk add --no-cache your-package

# Switch back to n8n user
USER node
