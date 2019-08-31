FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /e-colle
WORKDIR /e-colle
COPY requirements.txt /e-colle/
RUN pip install -r requirements.txt
COPY . /e-colle/
