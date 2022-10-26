#!/bin/ash
rm -rf /home/container/tmp/*

echo "⟳ Starting Nginx..."
echo "✓ Successfully started"
/usr/sbin/nginx -c /home/container/nginx/nginx.conf -p /home/container/

echo "⟳ Starting Core.jar..."
echo "✓ Successfully started"
java -jar core.jar
