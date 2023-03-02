FROM python:3.7.13-alpine3.16

# RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
# RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories &&\
RUN echo "http://dl-4.alpinelinux.org/alpine/v3.14/main" >> /etc/apk/repositories &&\
    echo "http://dl-4.alpinelinux.org/alpine/v3.14/community" >> /etc/apk/repositories &&\
    apk update && \
    apk add --no-cache gcc libffi-dev musl-dev chromium chromium-chromedriver &&\
    pip install --no-cache-dir selenium
