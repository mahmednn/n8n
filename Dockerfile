FROM n8nio/n8n
WORKDIR /home/node/n8n
COPY . .
RUN npm install
CMD ["n8n", "start"]
