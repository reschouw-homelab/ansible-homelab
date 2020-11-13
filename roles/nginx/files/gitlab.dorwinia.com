server {
  server_name gitlab.dorwinia.com;

  location / {
      proxy_pass https://gitlab.dorwinia.com/;
      proxy_buffering off;
  }

  access_log /var/log/nginx/gitlab.access;
  error_log /var/log/nginx/gitlab.error;

  listen 443 ssl; # managed by Certbot
  ssl_certificate /etc/letsencrypt/live/dorwinia.com/fullchain.pem; # managed by Certbot
  ssl_certificate_key /etc/letsencrypt/live/dorwinia.com/privkey.pem; # managed by Certbot
  include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
  ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot
}

server {
    if ($host = gitlab.dorwinia.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    server_name gitlab.dorwinia.com;

    listen 80;
    return 404; # managed by Certbot
}
