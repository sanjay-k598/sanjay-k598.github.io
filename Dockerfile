FROM nginx:1.27-alpine

# Clean default nginx content
RUN rm -rf /usr/share/nginx/html/*

COPY ops/nginx.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html

# Expose port
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
