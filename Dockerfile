FROM n8nio/n8n:latest

# نخلي الرووت مؤقتاً باش نركب pnpm
USER root

WORKDIR /home/node/n8n
COPY . .

# تحديث npm (اختياري لكن مفيد)
RUN npm install -g npm@latest

# تركيب pnpm
RUN npm install -g pnpm@10.16.0

# نرجع للمستخدم node
USER node

# تركيب الاعتمادات بالـ pnpm
RUN pnpm install --frozen-lockfile

CMD ["pnpm", "start"]
