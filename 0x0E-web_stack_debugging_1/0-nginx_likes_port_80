#!/bin/bash

# Update package repositories and install Nginx
apt-get update
apt-get install -y nginx

# Check if Nginx is running
if ! systemctl is-active --quiet nginx; then
    # Start Nginx if it's not running
    systemctl start nginx
fi

# Check Nginx configuration for port 80
if ! grep -q "listen 80;" /etc/nginx/sites-available/default; then
    # Add or update Nginx configuration to listen on port 80
    sed -i 's/^\(\s*\)listen\s*\(.*\)/\1listen 80;/' /etc/nginx/sites-available/default
fi

# Restart Nginx to apply changes
systemctl restart nginx

# Check Nginx listening status on port 80
echo "Checking Nginx listening status on port 80..."
netstat -tuln | grep ':80'

# Display active IPv4 IPs and their Nginx status
echo "Active IPv4 IPs and Nginx status:"
ip addr show | awk '/inet /{print $2}' | cut -d'/' -f1 | while read ip; do
    echo "IP: $ip"
    nc -z -v -w1 $ip 80 2>/dev/null && echo "Nginx is listening on $ip:80" || echo "Nginx is not listening on $ip:80"
done
