FROM node:18-alpine

WORKDIR /usr/src/n8n

RUN npm install -g n8n@latest --unsafe-perm

USER node

EXPOSE 5678

CMD ["n8n", "start"]
