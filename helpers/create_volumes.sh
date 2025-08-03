mkdir -p ${VOLUMES_FOLDER}/volumes/otcbox/swarmit/hooks
${DOCKERBIN} volume create --opt device=${VOLUMES_FOLDER}/volumes/otcbox/swarmit/hooks --opt type=none --opt o=bind otcbox_swarmit_hooks
mkdir -p ${VOLUMES_FOLDER}/volumes/otcbox/swarmit/images/registry/data
${DOCKERBIN} volume create --opt device=${VOLUMES_FOLDER}/volumes/otcbox/swarmit/images/registry/data --opt type=none --opt o=bind otcbox_swarmit_images_registry_data
mkdir -p ${VOLUMES_FOLDER}/volumes/otcbox/swarmit/core/logs/data
${DOCKERBIN} volume create --opt device=${VOLUMES_FOLDER}/volumes/otcbox/swarmit/core/logs/data --opt type=none --opt o=bind otcbox_swarmit_core_logs_data
mkdir -p ${VOLUMES_FOLDER}/volumes/otcbox/intern/vcs/gitea/actrunner
${DOCKERBIN} volume create --opt device=${VOLUMES_FOLDER}/volumes/otcbox/intern/vcs/gitea/actrunner --opt type=none --opt o=bind otcbox_intern_vcs_gitea_actrunner
mkdir -p ${VOLUMES_FOLDER}/volumes/otcbox/intern/vcs/gitea-db/dbdata
${DOCKERBIN} volume create --opt device=${VOLUMES_FOLDER}/volumes/otcbox/intern/vcs/gitea-db/dbdata --opt type=none --opt o=bind otcbox_intern_vcs_gitea-db_dbdata
mkdir -p ${VOLUMES_FOLDER}/volumes/otcbox/intern/vcs/gitea-db/initdb
${DOCKERBIN} volume create --opt device=${VOLUMES_FOLDER}/volumes/otcbox/intern/vcs/gitea-db/initdb --opt type=none --opt o=bind otcbox_intern_vcs_gitea-db_initdb
mkdir -p ${VOLUMES_FOLDER}/volumes/otcbox/intern/vcs/gitea/repos
${DOCKERBIN} volume create --opt device=${VOLUMES_FOLDER}/volumes/otcbox/intern/vcs/gitea/repos --opt type=none --opt o=bind otcbox_intern_vcs_gitea_repos
mkdir -p ${VOLUMES_FOLDER}/volumes/otcbox/intern/vcs/gitea/app
${DOCKERBIN} volume create --opt device=${VOLUMES_FOLDER}/volumes/otcbox/intern/vcs/gitea/app --opt type=none --opt o=bind otcbox_intern_vcs_gitea_app
mkdir -p ${VOLUMES_FOLDER}/volumes/otcbox/intern/vcs/gitea/apitoken
${DOCKERBIN} volume create --opt device=${VOLUMES_FOLDER}/volumes/otcbox/intern/vcs/gitea/apitoken --opt type=none --opt o=bind otcbox_intern_vcs_gitea_apitoken
# Setting required permissions
chmod 600 ${VOLUMES_FOLDER}/volumes/otcbox/swarmit/ingress/traefik/acme.json
# Setting required permissions
chmod 600 ${VOLUMES_FOLDER}/volumes/otcbox/swarmit/ingress/traefik/access.log

