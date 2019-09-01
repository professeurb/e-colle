FROM python:3

ENV PYTHONUNBUFFERED 1

RUN mkdir -p /opt/services/ecolle

WORKDIR /opt/services/ecolle
COPY requirements.txt /opt/services/ecolle/
RUN pip install -r requirements.txt
COPY . /opt/services/ecolle

EXPOSE 8000
CMD ["gunicorn", "--chdir", "e-colle", "--bind", ":8000", "ecolle.wsgi:application"]
