#!/bin/ash
rm -rf /home/container/tmp/*

echo "⟳ Starting Nginx..."
echo "✓ Successfully started"
/usr/sbin/nginx -c /home/container/nginx/nginx.conf -p /home/container/


echo "⟳ Downloading core.jar and stats.jar..."
curl -L -o /home/container/core.jar https://github.com/TheRedSRT4/JVLIA_TTV_ATTENDANCE/releases/download/latest/core.jar
curl -L -o /home/container/stats.jar https://github.com/TheRedSRT4/JVLIA_TTV_ATTENDANCE/releases/download/latest/stats.jar
echo "⟳ Starting Core.jar..."
echo "✓ Successfully started"
java -jar core.jar
