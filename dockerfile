# Gunakan Node.js base image
FROM node:18

# Tentukan working directory di dalam container
WORKDIR /app

# Salin package.json dan package-lock.json
COPY package*.json ./

# Install dependensi
RUN npm install

# Salin semua file ke dalam container
COPY . .

# Tentukan port yang digunakan
EXPOSE 3000

# Jalankan aplikasi
CMD ["npm", "start"]