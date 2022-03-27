server {
  listen 80;
  server_name dorwinia.com;
  return 301 https://$host$request_uri;
}

server {

  server_name dorwinia.com;
  listen 443 ssl;

  ssl_certificate /etc/letsencrypt/live/dorwinia.com/fullchain.pem;
  ssl_certificate_key /etc/letsencrypt/live/dorwinia.com/privkey.pem;

  root /var/www;

  location / {
    
  }

  access_log /var/log/nginx/dorwinia.access;
  error_log /var/log/nginx/dorwinia.error;
}
