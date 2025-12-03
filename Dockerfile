FROM nginx:1.27-alpine

# Clean default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site
COPY . /usr/share/nginx/html

# Expose port
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
