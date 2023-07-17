# The official Bytebase Docker image
FROM bytebase/bytebase:2.4.1

# Directory to store the data, which can be referenced as the mounting point.
RUN mkdir -p /var/opt/bytebase

ARG RENDER_EXTERNAL_HOST="unknown"

ENV RENDER_EXTERNAL_URL=$RENDER_EXTERNAL_URL

COPY . /usr/local/bin/

CMD ["/usr/local/bin/start.sh"]

ENTRYPOINT ["sh"]
