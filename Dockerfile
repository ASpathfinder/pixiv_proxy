FROM python:3.9.18-bullseye
LABEL authors="kellyalsa"

WORKDIR /app
COPY ./requirements.txt requirements.txt
COPY ./app.py app.py

RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "app:app", "-b", "0.0.0.0:5000"]

EXPOSE 8000