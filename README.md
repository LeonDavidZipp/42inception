# 42inception
## Usage
- start application: ```make```
## Website
http://127.0.0.1

## wordpress & php
get config (requires running container)
```bash
docker cp wordpress:/etc/php/8.2/fpm/pool.d/www.conf ./dockerfiles/wordpress/.
```

## nginx
get default config:
```bash
docker cp nginx:/etc/nginx/sites-available/default ./dockerfiles/nginx/.
```