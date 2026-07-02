# Base image Python
FROM python:3.11-slim

# Menampilkan log secara langsung
ENV PYTHONUNBUFFERED=1

# Menonaktifkan file .pyc
ENV PYTHONDONTWRITEBYTECODE=1

# Direktori kerja
WORKDIR /app

# Salin file requirements terlebih dahulu
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Salin seluruh project
COPY . .

# Port Streamlit
EXPOSE 8501

# Menjalankan Streamlit
CMD ["streamlit", "run", "app.py"]
