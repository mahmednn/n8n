FROM n8nio/n8n:latest

USER root
WORKDIR /home/node/n8n

RUN npm install -g npm@latest
RUN npm install -g pnpm@10.16.0

COPY . .

RUN pnpm install --frozen-lockfile || pnpm install

USER node
CMD ["pnpm", "start"]
