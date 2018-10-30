FROM java:8-jre

ENV GOOGLE_APPLICATION_CREDENTIALS "/etc/flank/gcloud-key.json"
ENV FLANK_VERSION 3.2.1

RUN set -ex ; \
  mkdir /usr/share/flank/ ; \
  mkdir /application/ ; \
  wget https://github.com/TestArmada/flank/releases/download/v${FLANK_VERSION}/flank.jar -O /usr/share/flank/flank.jar

COPY flank.sh /usr/local/bin/flank

WORKDIR /application/

CMD ["flank"]
