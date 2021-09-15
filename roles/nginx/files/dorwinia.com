upstream kube-workers {
  server kube-workers.dorwinia.com:30001;
}

server {
  server_name dorwinia.com;
  listen 80;
  

  location / {
    proxy_pass http://kube-workers;
  }

  access_log /var/log/nginx/dorwinia.access;
  error_log /var/log/nginx/dorwinia.error;
}
