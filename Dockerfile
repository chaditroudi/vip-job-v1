FROM node:18

# Create app directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Install nodemon globally (optional)
RUN npm install -g nodemon

# Copy the rest of your app
COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]
