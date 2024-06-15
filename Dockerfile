# Stage 1: Build the React application
FROM node:22-alpine3.19 as build-stage
WORKDIR /
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Serve the app with Nginx
FROM nginx:latest
COPY --from=build-stage /dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
