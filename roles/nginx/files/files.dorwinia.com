upstream nextcloud {
  server nextcloud.dorwinia.com;
}

server {
  listen 80;
  server_name files.dorwinia.com;
  return 301 https://$host$request_uri;
}

server {

  server_name files.dorwinia.com;
  listen 443 ssl;

  ssl_certificate /etc/letsencrypt/live/files.dorwinia.com/fullchain.pem;
  ssl_certificate_key /etc/letsencrypt/live/files.dorwinia.com/privkey.pem;

  # Increase default file size of 1 mb
  client_max_body_size 128M;

	# Set proxy options to not confuse Nextcloud
	proxy_set_header Host $host;
  proxy_set_header X-Forwarded-Proto $scheme;
  proxy_set_header X-Real-IP $remote_addr;
  proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;

  add_header Front-End-Https on;

  location / {
    proxy_pass http://nextcloud;
  }

  access_log /var/log/nginx/files.dorwinia.access;
  error_log /var/log/nginx/files.dorwinia.error;
}
