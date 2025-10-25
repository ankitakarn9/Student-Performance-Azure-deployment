FROM python:3.10-slim

WORKDIR /app
COPY . /app

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]

#Has Python 3.10 installed
#Contains the application code
#Has all necessary dependencies
<<<<<<< HEAD
#Runs Flask app on port 5000
=======
#Runs Flask app on port 5000
>>>>>>> c7f6f7eb79d97901617ef485fbe03ca1e0f16240
