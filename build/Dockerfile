FROM alpine:3.5
RUN apk add --no-cache ruby ruby-bundler ruby-json ruby-irb gcc ruby-dev g++ make libc-dev syslog-ng bash grep findutils wget  	postgresql-dev zlib-dev && \
  rm -rf /tmp/* /var/cache/apk/* && mkdir -p /opt/inc/web
COPY src/ /opt/inc/web
WORKDIR /opt/inc/web
RUN bundle install

# Install consul-template
RUN wget --no-check-certificate https://releases.hashicorp.com/consul-template/0.18.5/consul-template_0.18.5_linux_amd64.tgz -O /tmp/consul-tpl.tgz && \
  tar -zxvf /tmp/consul-tpl.tgz -C /usr/sbin && \
  chmod +x /usr/sbin/consul-template && \
  rm -f /tmp/consul-tpl.tgz

CMD ["rails s" ]
