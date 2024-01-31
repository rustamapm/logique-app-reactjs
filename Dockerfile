FROM node:18-alpine

# Create app directory
WORKDIR /logique-app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY public/ /logique-app/public
COPY src/ /logique-app/src
COPY package.json /logique-app/

RUN npm install

CMD ["npm", "start"]