FROM python:3.11-buster

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    python3-dev \
    python3-pip \
    python3-setuptools \
    python3-wheel \
    python3-venv \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip

RUN  pip install poetry

WORKDIR /app

CMD [ "python" ]