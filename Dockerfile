FROM python:3.7.13-alpine3.16

# RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
# RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && \
RUN echo "http://dl-4.alpinelinux.org/alpine/v3.14/main" >> /etc/apk/repositories && \
    echo "http://dl-4.alpinelinux.org/alpine/v3.14/community" >> /etc/apk/repositories && \
    apk update && \
    apk add --no-cache gcc=11.2.1_git20220219-r2 libffi-dev=3.4.2-r1 musl-dev=1.2.3-r0 chromium=102.0.5005.167-r0 chromium-chromedriver=102.0.5005.167-r0 && \
    pip install --no-cache-dir selenium==4.3.0
