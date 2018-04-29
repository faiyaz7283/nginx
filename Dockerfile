# Start with nginx alpine image
FROM nginx:alpine

LABEL maintainer="faiyaz7283@gmail.com"

# Install bash and other helpful tools
RUN apk add --no-cache bash bash-completion busybox-suid sudo git nano curl man

# Add the www-data user and group
RUN addgroup -g 1000 -S www-data \
 && adduser -u 1000 -D -S -G www-data www-data
