FROM rabbitmq:management

RUN apt-get update && apt-get install -y --no-install-recommends \
		curl ca-certificates && \
  	rm -rf /var/lib/apt/lists/*

RUN curl -SL -o rabbitmq_auth_backend_http-3.6.8.ez https://bintray.com/rabbitmq/community-plugins/download_file\?file_path\=rabbitmq_auth_backend_http-3.6.8.ez && \
    curl -SL -o rabbitmq_management_exchange-3.6.x-1de3ec17.ez https://bintray.com/rabbitmq/community-plugins/download_file?file_path=rabbitmq_management_exchange-3.6.x-1de3ec17.ez && \
    mv rabbitmq_auth_backend_http-3.6.8.ez rabbitmq_management_exchange-3.6.x-1de3ec17.ez /usr/lib/rabbitmq/lib/rabbitmq_server-${RABBITMQ_VERSION}/plugins/ && \
    rabbitmq-plugins enable --offline \
    rabbitmq_stomp \
    rabbitmq_web_stomp \
    rabbitmq_management_exchange \
    rabbitmq_auth_backend_http 
    
COPY custom-entrypoint.sh /usr/local/bin/custom-entrypoint.sh

RUN chmod +x /usr/local/bin/custom-entrypoint.sh

ENTRYPOINT ["custom-entrypoint.sh"]

CMD ["rabbitmq-server"]
