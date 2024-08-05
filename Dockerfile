FROM registry.access.redhat.com/ubi8/nodejs-16:1-139
WORKDIR $HOME
COPY package*.json ./
COPY . .
RUN npm install
RUN npm install @azure/identity
RUN npm install @azure/keyvault-secrets
EXPOSE 3000
EXPOSE 3001

CMD ["node", "get-secret.js"]
