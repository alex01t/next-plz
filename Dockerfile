FROM openresty/openresty:1.19.9.1-5-bullseye-fat
RUN apt-get -qq update \
    && apt-get install -qq net-tools procps curl vim moreutils
#    && rm -rf /var/lib/apt/lists/*
RUN rm -rf /etc/nginx /var/log/nginx \
    && ln -sTf /usr/local/openresty/nginx/conf /etc/nginx \
    && ln -sTf /usr/local/openresty/nginx/logs /var/log/nginx
#RUN opm install ledgetech/lua-resty-http

