# Gunakan image Python resmi sebagai base
FROM python:3.9-slim

# Set working directory di dalam kontainer
WORKDIR /app

# Salin file requirements dulu untuk optimasi cache
COPY requirements.txt .

# Instal dependensi
RUN pip install --no-cache-dir -r requirements.txt

# Salin seluruh kode aplikasi ke dalam kontainer
COPY . .

# Expose port yang digunakan aplikasi (8080 sesuai tugas sebelumnya)
EXPOSE 8080

# Perintah untuk menjalankan aplikasi
CMD ["python", "service/__init__.py"]
