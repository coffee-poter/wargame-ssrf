FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install -y curl && pip install --no-cache-dir Flask

EXPOSE 3000

CMD ["python", "app.py"]
