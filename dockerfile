FROM python:3.9

COPY . /code

WORKDIR /code

RUN pip install --no-cache-dir -e .

ENV FLASK_APP=js_example

CMD ["flask", "run", ]
