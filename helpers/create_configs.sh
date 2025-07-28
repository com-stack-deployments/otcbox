docker run -e SWARMIT_INGRESS_BASE_DOMAIN=${SWARMIT_INGRESS_BASE_DOMAIN} -e TRUST_STORES=system,java,nss -ti --rm -v ${COMPOSE_FOLDER}/configs/otcbox/swarmit/ingress/traefik/ingress_cert/local.crt.config:/certs/local.crt -v ${COMPOSE_FOLDER}/configs/otcbox/swarmit/ingress/traefik/ingress_certkey/local.key.config:/certs/local.key -v ${COMPOSE_FOLDER}/configs/otcbox/swarmit/ingress/traefik/certs/:/root/.local/share/mkcert/ alpine/mkcert -cert-file /certs/local.crt -key-file /certs/local.key localhost 127.0.0.1 ::1 $(echo ${SWARMIT_INGRESS_BASE_DOMAIN}) '*.'$(echo ${SWARMIT_INGRESS_BASE_DOMAIN})''
docker run -ti -e UID=$(id -u) -e GID=$(id -g) --rm -v ${COMPOSE_FOLDER}/configs/otcbox/swarmit/ingress/traefik//certs/:/certs/ alpine ash -c 'chmod 600 /certs/*'
docker run -u 0:0 -ti -e UID=$(id -u) -e GID=$(id -g) --rm -v ${COMPOSE_FOLDER}/configs/otcbox/swarmit/ingress/traefik//certs/:/certs/ alpine ash -c 'chown "${UID}:${GID}" /certs/*'
docker run -u 0:0 -ti -e UID=$(id -u) -e GID=$(id -g) --rm -v ${COMPOSE_FOLDER}/configs:/configs alpine ash -c 'chown -R "${UID}:${GID}" /configs/*'
echo "echo Certs were created for you:" > helpers/post.sh
echo "find ${CONFIGS_FOLDER}/configs/otcbox/swarmit/ingress/traefik/certs -type f " >> helpers/post.sh
echo "find ${CONFIGS_FOLDER}/configs/otcbox/swarmit/ingress/traefik -type f -name "*.crt.config" -o -name "*.key.config"" >> helpers/post.sh


