# Gebruik Node.js base image
FROM node:20-alpine

# Zet werkdirectory
WORKDIR /app

# Kopieer package.json en package-lock.json
COPY package*.json ./

# Installeer dependencies
RUN npm install --production

# Kopieer rest van de code
COPY . .

# Stel poort in (pas aan indien nodig)
EXPOSE 3000

# Start applicatie
CMD ["node", "index.js"]
