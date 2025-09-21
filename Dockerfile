FROM n8nio/n8n:latest

# نبدل مجلد العمل
WORKDIR /home/node/n8n

# ننسخ الملفات
COPY . .

# نحدّث npm للإصدار الأخير
RUN npm install -g npm@latest

# نركب الاعتمادات
RUN npm install

# أمر التشغيل
CMD ["n8n", "start"]
