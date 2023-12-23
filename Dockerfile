FROM node:14-alpine

# Create app directory
WORKDIR /usr/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080

# For production use, uncomment the following line:
# RUN npm ci --only=production

CMD ["node", "server.js"]
