FROM python:3.10-slim

WORKDIR /app

RUN pip install Flask==2.3.3 requests==2.31.0 beautifulsoup4==4.13.0 PyYAML==6.0.1 jieba==0.42.1 python-Levenshtein==0.21.1

COPY . .

ENV PORT=3000
EXPOSE 3000

CMD ["python", "app.py"]
