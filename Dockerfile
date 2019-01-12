FROM rabbitmq:3.7.6

ENV QUEUE_BALANCER_VERSION=0.0.3

ADD https://github.com/Ayanda-D/rabbitmq-queue-master-balancer/releases/download/v${QUEUE_BALANCER_VERSION}/rabbitmq_queue_master_balancer-${QUEUE_BALANCER_VERSION}.ez /usr/lib/rabbitmq/lib/rabbitmq_server-3.7.6/plugins/
RUN chmod 644 /usr/lib/rabbitmq/lib/rabbitmq_server-3.7.6/plugins/rabbitmq_queue_master_balancer-${QUEUE_BALANCER_VERSION}.ez
