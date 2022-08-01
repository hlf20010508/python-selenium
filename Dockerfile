FROM python:3.7-alpine

# update apk repo
RUN echo "http://dl-4.alpinelinux.org/alpine/v3.14/main" >> /etc/apk/repositories && \
    echo "http://dl-4.alpinelinux.org/alpine/v3.14/community" >> /etc/apk/repositories

# install dependencies
RUN apk update
RUN apk add --no-cache gcc libffi-dev musl-dev

# install chromedriver
RUN apk add --no-cache chromium chromium-chromedriver

# upgrade pip
RUN pip install --no-cache-dir --upgrade pip

# install selenium
RUN pip install --no-cache-dir selenium
