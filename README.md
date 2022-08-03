# python-selenium
> A docker image for selenium

## Image includes
- Alpine 3.16
- Python 3.7.13
- Chromium 102.0.5005.167
- ChromeDriver 102.0.5005.167 (0)
- Selenium 4.3.0

## Size
- Compressed 224MB
- Total 589MB

## Include in your Dockerfile
```Dockerfile
FROM hlf01/python-selenium:latest
```

## Build from source
```sh
git clone https://github.com/hlf20010508/python-selenium.git
cd python-selenium
sudo docker build -f Dockerfile -t python-selenium --no-cache .
```

## Link
[Docker Hub](https://hub.docker.com/repository/docker/hlf01/python-selenium)
