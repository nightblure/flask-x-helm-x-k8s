ARG PY_VER=3.10.10-alpine3.16
FROM python:${PY_VER}

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1

WORKDIR /usr/src/app

RUN apk update && apk add make

COPY requirements.txt ./

RUN pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

COPY main.py Makefile Dockerfile ./

EXPOSE 5000

RUN chmod a+x Makefile

CMD ["make", "runserver"]