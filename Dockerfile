# Use official NGINX image from Docker Hub
FROM nginx:latest

# Copy your custom NGINX configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your website files to the NGINX web directory
COPY . /usr/share/nginx/html

# Expose port 80 for HTTP
EXPOSE 80

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
