upstream kube-workers {
  server kube-workers.dorwinia.com:30001;
}

server {
  # Use of the .53 address below appears to be something specific to AWS
  resolver 127.0.0.53 valid=30s;
  set $backend "http://kube-workers.dorwinia.com:30001";

  server_name dorwinia.com;
  listen 80;

  location / {
    proxy_pass $backend;
  }

  access_log /var/log/nginx/dorwinia.access;
  error_log /var/log/nginx/dorwinia.error;
}
