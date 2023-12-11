FROM python:3.10-alpine

ADD hello.py .

CMD ["python", "./hello.py"]
