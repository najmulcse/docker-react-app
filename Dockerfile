FROM node:14.18.3-alpine3.14 
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . . 
ENV API_URL=api-react-app.com
EXPOSE 3000
CMD ["npm", "start"]
