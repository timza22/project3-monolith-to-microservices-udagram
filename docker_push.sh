#!/bin/bash

docker-compose -f docker-compose-build.yaml build

docker tag reverseproxy "fatoucheikh77/reverseproxy:v1.2"
docker tag udagram-api-user "fatoucheikh77/udagram-api-user:v1.1"
docker tag udagram-api-feed "fatoucheikh77/udagram-api-feed:v1.1"
docker tag udagram-frontend:local "fatoucheikh77/udagram-frontend:v1.2"

echo FallFatou@77 | docker login --username fatoucheikh77 --password-stdin

docker push "fatoucheikh77/reverseproxy:v1.2" &
docker push "fatoucheikh77/udagram-api-user:v1.1" &
docker push "fatoucheikh77/udagram-api-feed:v1.1" &
docker push "fatoucheikh77/udagram-frontend:v1.2" &

docker pull "fatoucheikh77/reverseproxy:v1.2" &
docker pull "fatoucheikh77/udagram-api-user:v1.1" &
docker pull "fatoucheikh77/udagram-api-feed:v1.1" &
docker pull "fatoucheikh77/udagram-frontend:v1.2" &
wait