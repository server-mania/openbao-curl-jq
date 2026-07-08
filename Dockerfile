FROM openbao/openbao:2.0.0 AS openbao-src

FROM curlimages/curl:8.11.0

# ベースイメージは一般ユーザのためrootに変更
USER root

RUN apk add --no-cache jq

COPY --from=openbao-src /bin/bao /usr/local/bin/bao

# 戻す
USER curl_user