FROM iron/python:2

WORKDIR /app
ADD . /app

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && rm -rf /var/cache/apk/*

RUN pip install --upgrade pip && pip install textblob

RUN pip install -r requirements.txt && python -m textblob.download_corpora


