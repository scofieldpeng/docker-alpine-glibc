FROM frolvlad/alpine-glibc:glibc-2.27

LABEL MAINTAINER="scofieldpeng <penjianfeng@gmail.com>"

# ADD ustc source
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

# moidfy timezone to China
RUN apk --no-cache add tzdata  && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone     