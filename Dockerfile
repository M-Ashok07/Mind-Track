# Use nginx as the base image
FROM nginx:alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy build files from dist/ to nginx html directory
COPY dist/ /usr/share/nginx/html/

# Expose default nginx port
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

