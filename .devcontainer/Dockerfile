FROM python:3.8.12-slim

RUN apt update \
    && apt install -y --no-install-recommends \
    apt-utils \
    git \
    gcc \
    build-essential \
    && apt autoremove -y \
    && apt clean -y \
    && rm -rf /var/lib/apt/lists/*
