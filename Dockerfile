FROM python:3.10-alpine

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY ./main.py /code/main.py

CMD ["python", "./main.py"]
