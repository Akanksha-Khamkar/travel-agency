# Build an image that serves the static site with nginx
FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy site files into nginx html folder
COPY . /usr/share/nginx/html

# Expose port 80 (nginx)
EXPOSE 80

# Start nginx (default command is fine)
CMD ["nginx", "-g", "daemon off;"]

