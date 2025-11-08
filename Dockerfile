FROM kong:3.4

USER root

COPY kong.conf /etc/kong/kong.conf
COPY configs/kong-dev.yml /etc/kong/kong.yml

RUN chown -R kong:kong /etc/kong/

USER kong

EXPOSE 8000 8001

CMD ["kong", "start"]