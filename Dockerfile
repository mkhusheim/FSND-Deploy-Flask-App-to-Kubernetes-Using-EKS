FROM python:stretch


RUN pip install --upgrade pip
RUN pip install flask

WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]