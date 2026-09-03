FROM openbao/openbao:2.6.2 AS openbao-src

FROM curlimages/curl:8.22.0

# ベースイメージは一般ユーザのためrootに変更
USER root

RUN apk add --no-cache jq

COPY --from=openbao-src /usr/bin/bao /usr/local/bin/bao

# 戻す
USER curl_user
