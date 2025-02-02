FROM python:3.11-slim-bullseye

RUN apt update -y && apt install awscli -y
WORKDIR /app

COPY . /app
#RUN pip install -r requirements.txt

RUN pip install -e .

CMD ["python3", "app.py"]