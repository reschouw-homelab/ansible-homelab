upstream homepage {
  server kube-worker-1.dorwinia.com:30001;
  server kube-worker-2.dorwinia.com:30001;
  server kube-worker-3.dorwinia.com:30001;
}

server {
  server_name dorwinia.com;
  listen 80;
  

  location / {
    proxy_pass http://homepage/;
  }

  access_log /var/log/nginx/dorwinia.access;
  error_log /var/log/nginx/dorwinia.error;
}
