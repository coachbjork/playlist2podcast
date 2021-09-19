FROM python:3.9-slim-buster

WORKDIR /app
COPY . .

ENV INSIDE_DOCKER "True"

CMD ["python", "./main.py"]

# docker run -d --name p2p --restart unless-stopped \
#     -v $(pwd)/config.yaml:/app/config.yaml:ro \
#     -v $(pwd)/podcasts:/podcasts \
#     psidex/spacexlaunchbot-webserver
