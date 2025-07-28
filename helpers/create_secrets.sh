source ./compose/.secrets
mkdir -p "${SECRETS_FOLDER}/secrets/otcbox/swarmit/ingress/traefik" && echo  "${SEC_OTCBOX_SWARMIT_INGRESS_TRAEFIK_INGRESS_ADMIN}" > "${SECRETS_FOLDER}/secrets/otcbox/swarmit/ingress/traefik/ingress_admin.secret"
mkdir -p "${SECRETS_FOLDER}/secrets/otcbox/intern/vcs/gitea-db" && echo  "${SEC_OTCBOX_INTERN_VCS_GITEA_DB_ROOT}" > "${SECRETS_FOLDER}/secrets/otcbox/intern/vcs/gitea-db/root.secret"
mkdir -p "${SECRETS_FOLDER}/secrets/otcbox/intern/vcs/gitea-db" && echo  "${SEC_OTCBOX_INTERN_VCS_GITEA_DB_USER}" > "${SECRETS_FOLDER}/secrets/otcbox/intern/vcs/gitea-db/user.secret"
mkdir -p "${SECRETS_FOLDER}/secrets/otcbox/intern/vcs/gitea" && echo  "${SEC_OTCBOX_INTERN_VCS_GITEA_CICD_USER}" > "${SECRETS_FOLDER}/secrets/otcbox/intern/vcs/gitea/cicd_user.secret"
mkdir -p "${SECRETS_FOLDER}/secrets/otcbox/intern/vcs/gitea" && echo  "${SEC_OTCBOX_INTERN_VCS_GITEA_CICD_KEY}" > "${SECRETS_FOLDER}/secrets/otcbox/intern/vcs/gitea/cicd_key.secret"

