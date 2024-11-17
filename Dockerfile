FROM python:3.9-slim

WORKDIR /app

COPY model_loader.py /app
COPY model.pkl /app

#зависимости
RUN pip install -r requirements.txt

# Порт 5000 для Flask
EXPOSE 5000

CMD ["python", "model_loader.py"]
