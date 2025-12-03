# Simple NGINX container for static site
FROM nginx:stable-alpine

# Remove default NGINX static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site files
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
