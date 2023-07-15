# Temel olarak kullanacağımız imajı belirliyoruz
FROM python:3.8-slim

# Uygulama dosyalarını çalışma dizinine kopyalıyoruz
COPY . /app

# Uygulamanın çalışacağı dizini belirliyoruz
WORKDIR /app

# Bağımlılıkları yüklüyoruz
RUN pip install --no-cache-dir -r requirements.txt

# Uygulamayı çalıştırıyoruz
CMD ["python", "app.py"]
