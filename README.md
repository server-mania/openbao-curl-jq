# openbao-curl-jq

自分用docker image curlイメージをベースにopenbaoバイナリとjqの詰め合わせセット  
openbaoバイナリは公式が提供しているイメージを利用してマルチステージングビルドで入れる。  
jqは良さげなイメージは無かったため、apk add で入れる