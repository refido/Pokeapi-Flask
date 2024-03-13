# Gunakan base image Python
FROM python:latest

# Set working directory di dalam container
WORKDIR /app

# Copy dependencies file ke dalam container
COPY requirements.txt .

# Install dependencies dari requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy seluruh isi dari direktori aplikasi ke dalam container
COPY . .

# Expose port yang digunakan oleh aplikasi
EXPOSE 5000

# Menjalankan aplikasi dengan python run.py
CMD [ "python", "run.py" ]
