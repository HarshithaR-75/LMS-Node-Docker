# Start with a base ingredient (official Node.js image)
FROM node:alpine AS development
ENV NODE_ENV development

RUN mkdir C:\Users\harsh\Downloads\LMS-Node-Docker-check\LMS-Node-Docker


# Set where the ingredients will be used (working directory)
WORKDIR C:\Users\harsh\OneDrive\Desktop\lms-node-copy

# Add the ingredients (copy package files and install dependencies)
COPY package*.json ./
RUN npm install

EXPOSE 3000

## THE LIFE SAVER
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.2.1/wait /wait
RUN chmod +x /wait

# Add the rest of the app's files
COPY . .

# Say which part to bake (start the app)

# CMD [ "node", "server.js" ]
CMD /wait && node server.js
