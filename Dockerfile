FROM n8nio/n8n:latest

WORKDIR /home/node/n8n
COPY . .

# تحديث npm مع إعطاء صلاحيات
RUN npm install -g npm@latest --unsafe-perm=true --allow-root

# تركيب الاعتمادات
RUN npm install --unsafe-perm=true

CMD ["n8n", "start"]
