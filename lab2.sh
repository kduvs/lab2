#!/bin/bash
curl -X POST -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' -d ".env" https://start.bsu.ru
# curl -X POST 'Content-Type: application/json' -d @request.json https://start.bsu.ru
# {
    # "query" : "logon",
    # "user" : "Санжиев Владислав Арсаланович",
    # "password" : "547209",
    # "timeout" : "1800"
# }


# curl \
# --header 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' \
#     --data "query=logon" \
#     --data "user=Санжиев+Владислав+Арсаланович" \
#     --data "password=547209" \
#     --data "timeout=1800" \
#     https://start.bsu.ru


export $(xargs < .env)
echo "query=$query"
echo "user=$user"
echo "password=547209"
echo "timeout=$timeout"
curl \
    --header 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' \
    --data "query=\$query" \
    --data "user=\$user" \
    --data "password=\$547209" \
    --data "timeout=\$timeout" \
    https://start.bsu.ru