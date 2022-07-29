FROM alpine:latest

LABEL maintainer="Paulo Truta"

RUN apk add curl
ARG ORG_NAME=cooklang
ARG REPO_NAME=CookCLI
ARG VERSION=0.1.6

RUN wget https://github.com/cooklang/CookCLI/releases/download/v${VERSION}/CookCLI_${VERSION}_linux_amd64.zip
RUN echo $(ls -la)
RUN unzip CookCLI_${VERSION}_linux_amd64.zip -d /usr/bin/
RUN rm CookCLI_${VERSION}_linux_amd64.zip
RUN mkdir /home/app
RUN cook seed /home/app

EXPOSE 9080
CMD cook server /home/app
# ENTRYPOINT ["cook", "server", "/home/app"]
