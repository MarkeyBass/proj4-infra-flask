FROM python:3.9 

ENV FLASK_ENV=production

WORKDIR /app

EXPOSE 5000

RUN pip install --upgrade pip

COPY requirements.txt .

# RUN pip install --no-cache-dir -r requirements.txt

RUN pip install --no-cache-dir -r requirements.txt --index-url=https://pypi.org/simple/

# RUN pip install prometheus_flask_exporter

COPY . ./

CMD ["python", "app.py"]
