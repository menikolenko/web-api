#!/bin/bash

make_response () {
echo -en "HTTP/1.1 200 OK\r\nConnection: keep-alive\r\n\r\n
Hello from api!
$(PGPASSWORD=qwerty psql -U postgres -h backend -p 5432 -c '\l')"
}
while make_response | nc -l "${WEB_API_PORT:-7001}"; do
echo "================================================"
done
