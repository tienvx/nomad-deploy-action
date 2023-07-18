FROM hendrikmaus/nomad-cli:1.5.6

RUN apk update && apk add bash gettext

WORKDIR /nomad-deploy
COPY deploy /nomad-deploy/deploy

ENTRYPOINT ["/nomad-deploy/deploy"]
