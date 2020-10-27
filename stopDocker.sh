docker ps -q --filter "name=demo" | grep -q . && docker stop demo&& docker rm -fv demo
exit 0
