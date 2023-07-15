# Temel Docker görüntüsünü belirliyoruz
FROM python:3.9

# Uygulama klasörünü oluşturup ve çalışma dizini olarak ayarlıyoruz
WORKDIR /app

# Gerekli bağımlılıkları kopyalıyoruz
COPY requirements.txt .

# Bağımlılıkları yükleyip devam ediyoruz
RUN pip install --no-cache-dir -r requirements.txt

# Uygulama kodunu kopyalıyoruz
COPY . .

#Container'ın bağlantı noktasını belirtiyoruz
EXPOSE 80

# Uygulamayı çalıştırıyoruz - son adım
CMD ["python", "app.py"]
