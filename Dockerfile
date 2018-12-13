
FROM dalongrong/mtail as builder

FROM openresty/openresty:alpine
ENV TINI_VERSION v0.18.0
RUN apk add --update \
    &&  apk add --no-cache tini
ADD entrypoint.sh /entrypoint.sh
ADD mtail.sh  /mtail.sh
COPY nginx.conf usr/local/openresty/nginx/conf/
COPY --from=builder /usr/bin/mtail /usr/bin/
EXPOSE 80 3903
ENTRYPOINT ["/sbin/tini","-s", "--", "/entrypoint.sh"]


