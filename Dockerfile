# Start with a base ingredient (official Node.js image)
FROM node:14

# Set where the ingredients will be used (working directory)
WORKDIR C:\Users\harsh\OneDrive\Desktop\lms-node-copy

# Add the ingredients (copy package files and install dependencies)
COPY package*.json ./
RUN npm install

# Add the rest of the app's files
COPY . .

# Say which part to bake (start the app)
CMD ["node", "server.js"]
