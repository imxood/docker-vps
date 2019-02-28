FROM ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends supervisor

COPY etc /etc
COPY v2ray /etc/v2ray
COPY bin /bin

RUN ln -s /etc/v2ray/v2ray /usr/bin/v2ray

EXPOSE 10000 10001

CMD ["/bin/systemctl"]
