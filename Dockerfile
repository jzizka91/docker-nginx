FROM nginx:alpine

# Install 
RUN apk --no-cache add nginx openssl curl \
    && mkdir /etc/nginx/certs \
    && mkdir /etc/nginx/sites \
    && wget -O - https://get.acme.sh | sh

# Copy nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Set startup command
ENTRYPOINT nginx
