FROM alpine:3.8

RUN apk add --no-cache erlang erlang-sasl erlang-erts erlang-crypto erlang-xmerl erlang-ssl erlang-eunit
RUN apk add --no-cache --virtual .build-dependencies \
    gawk git autoconf automake libtool build-base erlang-dev linux-pam-dev \
    && git clone git://github.com/klacke/yaws.git \
    && cd yaws \
    && autoreconf -fi \
    && ./configure --localstatedir=/var --sysconfdir=/etc \
    && make install \
    && apk del .build-dependencies \
    && cd / ; rm -rf yaws

EXPOSE 80
ENTRYPOINT /usr/local/bin/yaws -i
