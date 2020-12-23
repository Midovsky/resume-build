FROM node:12

# Create app directory
RUN mkdir -p /app
WORKDIR /app

# Installing dependencies
COPY package*.json /app/
RUN npm install

# Copying source files
COPY . /app

# Building app
# RUN npm run build
EXPOSE 3000

RUN npm run build

# Running the app at container start
CMD "npm" "run" "start"