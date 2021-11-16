FROM python:3.8.12-slim

# Add project source
WORKDIR /usr/src/musicbot
COPY . ./

# Install dependencies
RUN apt update \
    && apt install -y --no-install-recommends \
    apt-utils \
    git \
    gcc \
    build-essential \
    ffmpeg \
    && apt autoremove -y \
    && apt clean -y \
    && rm -rf /var/lib/apt/lists/* \
\
# Install pip dependencies
&& pip install --no-cache-dir -r requirements.txt

ENV APP_ENV=docker

ENTRYPOINT ["python3", "dockerentry.py"]
