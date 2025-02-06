# Use an official Nginx image to serve static files
FROM nginx:alpine

# Copy the static website files from the current directory to the Nginx server's public directory
COPY ./ /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
