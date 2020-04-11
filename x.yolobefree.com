server {
        listen 80;
        listen [::]:80;

        root /var/www/x.yolobefree.com;
        index index.html index.htm index.nginx-debian.html;

        server_name x.yolobefree.com;

        location / {
                try_files $uri $uri/ =404;
        }
}
