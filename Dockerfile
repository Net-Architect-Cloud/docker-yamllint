FROM alpine:latest

RUN apk add --no-cache curl git zip py-pip

COPY requirements.txt /tmp/requirements.txt

RUN python3 -m pip install --no-cache-dir --disable-pip-version-check --break-system-packages -r /tmp/requirements.txt \
    && rm /tmp/requirements.txt
