# استخدم صورة Node.js الرسمية كأساس
FROM node:20-alpine

# تحديد مجلد العمل داخل الحاوية
WORKDIR /app

# نسخ ملفات المشروع إلى الحاوية
COPY package.json package-lock.json* ./
RUN npm install

# نسخ باقي الملفات (مثل index.js و bin)
COPY . .

# تعيين الملف التنفيذي الافتراضي عند تشغيل الحاوية
CMD ["node", "index.js"]
