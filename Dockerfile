FROM python:3.10-alpine

ADD requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

ADD main.py .

CMD ["python", "./main.py"]
