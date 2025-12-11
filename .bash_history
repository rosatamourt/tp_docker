su
su
su -
su
sudo apt update
exit
podman info --debug | grep rootless
podman run --rm alpine id
exit
podman run --rm alpine id
podman system prune --all
rm -rf ~/.local/share/containers
podman run --rm alpine id
exit
podman run --rm alpine id
su 
apt update 
podman run --rm alpine id
podman system prune --all
podman run --rm alpine id
podman network ls
nano storage.conf
mkdir -p ~/.config/containers/
cat <<EOF > ~/.config/containers/storage.conf
[storage]
  driver = "overlay"
  ignore_chown_errors = "true"
  runroot = "/run/user/$(id -u)/containers/storage"
  graphroot = "/home/rostam/.local/share/containers/storage"
[storage.options.overlay]
  mount_program = "/usr/bin/fuse-overlayfs"
EOF

rm -rf ~/.local/share/containers
podman stop -a
podman rm -a
podman system prune --force
podman run --rm alpine id
podman network create votingapp_net
podman network ls
podman volume create db_data
podman run -d   --name votingapp_db   --network votingapp_net   -v db_data:/var/lib/postgresql/data:Z   -e POSTGRES_USER=rostam   -e POSTGRES_PASSWORD=password   -e POSTGRES_DB=voting_db   postgres:16-alpine
podman run -d   --name votingapp_db   --network votingapp_net   -v db_data:/var/lib/postgresql/data:Z   -e POSTGRES_USER=rostam   -e POSTGRES_PASSWORD=password   -e POSTGRES_DB=voting_db   docker.io/library/postgres:16-alpine
podman ps
podman run -d   --name votingapp_reverse   --network votingapp_net   -p 80:80   -v /home/rostam/tp_docker/reverse/nginx.conf:/etc/nginx/conf.d/default.conf:Z   docker.io/library/nginx:alpine
podman run -d   --name votingapp_reverse   --network votingapp_net   -p 30000   -v /home/rostam/tp_docker/reverse/nginx.conf:/etc/nginx/conf.d/default.conf:Z   docker.io/library/nginx:alpine
podman run -d   --name votingapp_reverse   --network votingapp_net   -p 80:80   -v /home/rostam/tp_docker/reverse/nginx.conf:/etc/nginx/conf.d/default.conf:Z \
podman run -d \
podman rm votingapp_reverse
podman run -d   --name votingapp_reverse   --network votingapp_net   -p 80:80   -v /home/rostam/tp_docker/reverse/nginx.conf:/etc/nginx/conf.d/default.conf:Z   docker.io/library/nginx:alpine
podman run -d   --name votingapp_reverse   --network votingapp_net   -p 8080:80   -v /home/rostam/tp_docker/reverse/nginx.conf:/etc/nginx/conf.d/default.conf:Z   docker.io/library/nginx:alpine
podman rm votingapp_reverse
podman run -d   --name votingapp_reverse   --network votingapp_net   -p 8080:80   -v /home/rostam/tp_docker/reverse/nginx.conf:/etc/nginx/conf.d/default.conf:Z   docker.io/library/nginx:alpine
su 
su
podman rm votingapp_reverse
lsof -i :8080
podman run -d   --name votingapp_reverse   --network votingapp_net   -p 8080:80   -v /home/rostam/tp_docker/reverse/nginx.conf:/etc/nginx/conf.d/default.conf:Z   docker.io/library/nginx:alpine
podman system stop
podman stop votingapp_db
podman rm votingapp_reverse
exit
podman run -d   --name votingapp_reverse   --network votingapp_net   -p 8080:80   -v /home/rostam/tp_docker/reverse/nginx.conf:/etc/nginx/conf.d/default.conf:Z   docker.io/library/nginx:alpine
cd tp_docker
ls
nano ./reverse/Dockerfile

nano ./reverse/Dockerfile
nano  /etc/nginx/conf
nano  /etc/nginx.conf
cd reverse
ls
nano nginx.conf 
exit
podman ps -a
ss -tulnp
podman pod ps
podman run -d   --name votingapp_reverse   --network votingapp_net   -p 8080:80   -v /home/rostam/tp_docker/reverse/nginx.conf:/etc/nginx/conf.d/default.conf:Z \
podman run -d   --name votingapp_reverse   --network votingapp_net   -p 5000:5000   -v /home/rostam/tp_docker/reverse/nginx.conf:/etc/nginx/conf.d/default.conf:Z \
podman run -d   --name votingapp_reverse   --network votingapp_net   -p 5000:5000   -v /home/rostam/tp_docker/reverse/nginx.conf:/etc/nginx/conf.d/default.conf:Z \docker.io/library/nginx:alpine
podman ps
podman ps -a
podman rm votingapp_reverse
podman run -d   --name votingapp_reverse   --network votingapp_net   -p 5000:80   -v /home/rostam/tp_docker/reverse/nginx.conf:/etc/nginx/conf.d/default.conf:Z   docker.io/library/nginx:alpine
cd tp_docker
ls
cd reverse
ls
nano nginx.conf 
exit
podman run -d   --name votingapp_api   --network votingapp_net   -e DB_HOST=votingapp_db   docker.io/library/alpine sleep 3600
podman ps
podman run -d >   --name votingapp_db >   --network votingapp_net >   -v db_data:/var/lib/postgresql/data:Z >   -e POSTGRES_USER=rostam >   -e POSTGRES_PASSWORD=password >   -e POSTGRES_DB=voting_db >   docker.io/library/postgres:16-alpine
--name
podman run -d   --name votingapp_db   --network votingapp_net   -v db_data:/var/lib/postgresql/data:Z   -e POSTGRES_USER=rostam   -e POSTGRES_PASSWORD=password   -e POSTGRES_DB=voting_db   docker.io/library/postgres:16-alpine
podman rm votingapp_db
podman run -d   --name votingapp_db   --network votingapp_net   -v db_data:/var/lib/postgresql/data:Z   -e POSTGRES_USER=rostam   -e POSTGRES_PASSWORD=password   -e POSTGRES_DB=voting_db   docker.io/library/postgres:16-alpine
podman ps
rostam@debian:~$ podman ps
WARN[0000] Failed to decode the keys ["storage.ignore_chown_errors"] from "/home/rostam/.config/containers/storage.conf"
CONTAINER ID  IMAGE                                 COMMAND               CREATED         STATUS         PORTS                 NAMES
79c3ab6f482a  docker.io/library/nginx:alpine        nginx -g daemon o...  5 minutes ago   Up 5 minutes   0.0.0.0:5000->80/tcp  votingapp_reverse
91613da3d4f3  docker.io/library/alpine:latest       sleep 3600            4 minutes ago   Up 4 minutes                         votingapp_api
97ea7208e7e2  docker.io/library/postgres:16-alpine  postgres              15 seconds ago  Up 15 seconds  5432/tcp              votingapp_db
rostam@debian:~$podman run -d   --name votingapp_monitor   --network votingapp_net \
podman run -d   --name votingapp_monitor   --network votingapp_net   docker.io/library/alpine sleep 3600
podman ps 
podman build -t votingapp-api:latest /home/rostam/tp_docker/api
podman images
podman ps
podman ps -a
podman build -t votingapp-api:latest /home/rostam/tp_docker/api
curl http:/localhost:80/
podman ps -a
podman stop votingapp_api
podman rm votingapp_api
podman run -d   --name votingapp_api   --network votingapp_net   -e DB_HOST=votingapp_db   -e DB_USER=rostam   -e DB_PASSWORD=password   -e DB_NAME=voting_db   localhost/votingapp-api:latest
podman ps
podman logs votingapp_api
curl http:/localhost:5000/
apt install podman-compose
sudo apt install podman-compose
su
cd stack.yml
ls
cd tp_docker
ls
nano stack.yml
cd ..
apt install podman-compose
su
podman rm -f votingapp_db votingapp_api votingapp_monitor votingapp_reverse
podman network rm votingapp_net
podman volume rm db_data
podman-compose up -d
ls -l stack.yml
mv stack.yml docker-compose.yml
podman-compose up -d
mv docker-compose.yml stack.yml
podman-compose up -d
ls -l stack.yml
podman-compose up -d stack.yml
podman-compose up -f stack.yml
podman-compose up -d -f stack.yml
podman-compose -f stack.yml up -d
cd tp_docker
ls
nano stack.yml 
podman-compose -f stack.yml up -d
podman-compose -f stack.yml ps
exit
podman-compose -f stack.yml up -d
podman network is
podman network as
podman network ls
podman-compose -f stack.yml ps
podman-compose -f stack.yml up -d
podman-compose -f stack.yml down
podman-compose -f stack.yml stop
podman-compose -f stack.yml up -d --no-build
cd tp_docker
ls
nano stack.yml 
podman-compose -f stack.yml up -d --no-build
nano stack.yml 
cd..
cd ..
podman-compose -f stack.yml up -d --no-build
podman network create rostam_votingapp_net --driver bridge
podman-compose -f stack.yml up -d --no-build
podman network rm rostam_votingapp_net
podman network create rostam_app_net --driver bridge
podman network rm rostam_votingapp_net
podman network create rostam_app_net --driver bridge
podman-compose -f stack.yml up -d --no-build
cd /tp_docker/stack.yml
cd /tp_docker/stack.yml/
cd tp_docker
ls
nano stack.yml
exit
sudo chown rostam:rostam stack.yml
su -
su 
cd tp_docker
cd
ls
nano stack.yml
podman-compose -f stack.yml down
podman-compose -f stack.yml down -v --rmi all
podman stop votingapp_db votingapp_api votingapp_reverse votingapp_monitor
podman rm -f $(podman ps -aq --filter label=io.podman.compose.project=rostam)
podman pod rm -f $(podman pod ps -q --filter name=pod_rostam)
podman-compose -f stack.yml up -d --no-build
podman-compose -f stack.yml ps
podman-compose -f stack.yml up -d --no-build
podman pull docker.io/library/alpine:latest
podman-compose -f stack.yml up -d --no-build --replace
podman rm -f votingapp_db votingapp_api votingapp_reverse votingapp_monitor
podman-compose -f stack.yml up -d --no-build
podman rm -f votingapp_db votingapp_api votingapp_reverse votingapp_monitor
podman rm -f 02250bc72ab98da06b6337d81534829b1bd589662d61291a54505140ea6f9a70 362d4530b966755558a83b2be4044d415b4c2db51e1e5e3401d437823c219e0a
podman rm -f ef20ad6560e5ecca2c606a18933288634705245e55245d52174a1994589e7147
podman rmi -f votingapp-monitor:latest
podman-compose -f stack.yml up -d --no-build
podman-compose -f stack.yml ps
