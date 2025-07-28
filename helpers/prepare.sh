#!bin/bash
source "./compose/.values"
source "./compose/.env"

boldon=`tput bold`
boldoff=`tput sgr0`

printf "\n${boldon}Creating resources:${boldoff}\n"
if [[ ! -e ".resources_created" ]]
then 

########### CREATE SECRETS ##################
if [[ ! -e ".secrets_created" ]]
then
    printf "${boldon} - secrets${boldoff}\n"
    sh -c "source ./compose/.values && ./helpers/create_secrets.sh" > "/dev/null"

    if [[ "${SECRETS_FOLDER}" != "${COMPOSE_FOLDER}" ]]
    then
        if [[ ! -e "${SECRETS_FOLDER}" ]]
        then   
            mkdir -p "${SECRETS_FOLDER}"
            rsync -a "${COMPOSE_FOLDER}/secrets" "${SECRETS_FOLDER}"
            rm -rf "${COMPOSE_FOLDER}/secrets"
        fi
    fi    
    touch ".secrets_created"
fi

########### CREATE NETWORKS #################
if [[ ! -e ".networks_created" ]]
then
    printf "${boldon} - networks${boldoff}\n"
    sh -c "source ./compose/.values && ./helpers/create_networks.sh" > "/dev/null"
    touch ".networks_created"
fi

########### CREATE VOLUMES ##################
if [[ ! -e ".volumes_created" ]]
then
    printf "${boldon} - volumes${boldoff}\n"
    if [[ "${VOLUMES_FOLDER}" != "${COMPOSE_FOLDER}" ]]
    then
        if [[ ! -e "${VOLUMES_FOLDER}" ]]
        then   
            mkdir -p "${VOLUMES_FOLDER}/"
        fi
        rsync -a "${COMPOSE_FOLDER}/volumes" "${VOLUMES_FOLDER}/"
        rm -rf "${COMPOSE_FOLDER}/volumes"
        
    fi      
    sh -c "source ./compose/.values && ./helpers/create_volumes.sh" > "/dev/null"
    find "${VOLUMES_FOLDER}/volumes/" -type f \
        -not -name "acme.json" \
        -exec \
        bash -c '\
            source ./compose/.values; \
            source ./compose/.env; \
            python helpers/repl.py ./compose/.secrets {}; \
            python helpers/repl.py ./compose/.env {}; \
            ' \
            \;
          
    touch ".volumes_created"
fi

    touch ".resources_created"
fi

printf "\n${boldon}Initializing resources:${boldoff}\n"
if [[ ! -e ".resources_initialized" ]]
then 

########### INIT HOOKS ###################
if [[ ! -e ".hooks_created" ]]
then
    printf "${boldon} - hooks${boldoff}\n"
    find "hooks/" -type f \
        -not -name ".hook.env" \
        -exec \
        bash -c '\
            ASSETENV=$(dirname '"{}"')"/.hook.env"; \
            source ./compose/.values; \
            source ./compose/.env; \
            python helpers/repl.py ./compose/.secrets {}; \
            python helpers/repl.py ./compose/.env {}; \
            python helpers/repl.py $ASSETENV {}; \
            ' \
            \;   
    find "helpers/" -type f \
        -name "*_hooks.sh" \
        -not -name "*.env" \
        -exec \
        bash -c '\
            source ./compose/.values; \
            source ./compose/.env; \
            python helpers/repl.py ./compose/.secrets {}; \
            python helpers/repl.py ./compose/.env {}; \
            ' \
            \;
    touch ".hooks_created"
fi

########### INIT CONFIGS ###################
if [[ ! -e ".configs_created" ]]
then
    printf "${boldon} - configs${boldoff}\n"
    if [[ -e "./helpers/create_configs.sh" ]]
    then
        echo
        sh -c "source ./compose/.values && ./helpers/create_configs.sh | grep -vE \" at ./\"" 
    fi
    find "configs/" -type f \
        -not -name "*.config.bin" \
        -not -name "*.env" \
        -not -name "*.key*" \
        -not -name "*.crt*" \
        -not -name "*.pem*" \
        -exec \
        bash -c '\
            ASSETENV=$(echo '"{}"' | sed -e "s/.config$/.env/"); \
            source ./compose/.values; \
            source ./compose/.env; \
            python helpers/repl.py ./compose/.secrets {}; \
            python helpers/repl.py ./compose/.env {}; \
            python helpers/repl.py $ASSETENV {}; \
            ' \
            \;
    if [[ "${CONFIGS_FOLDER}" != "${COMPOSE_FOLDER}" ]]
    then
        if [[ ! -e "${CONFIGS_FOLDER}" ]]
        then   
            mkdir -p "${CONFIGS_FOLDER}"
        fi
        rsync -a "${COMPOSE_FOLDER}/configs" "${CONFIGS_FOLDER}"
        rm -rf "${COMPOSE_FOLDER}/configs"
    fi                   
    touch ".configs_created"
    if [[ -e "${COMPOSE_FOLDER}/helpers/post.sh" ]]
    then
        sh "${COMPOSE_FOLDER}/helpers/post.sh"
    fi
fi
    touch ".resources_initialized"
fi
