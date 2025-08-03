#!/bin/sh
source "compose/.values"
source "compose/.env"
if [[ ! -e "${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/add_local_user_cicd.once" ]]
then
    echo "########################################################"
    echo "None Running hooks for service gitea"
    echo "########################################################"
    echo "Hook 'add local user "cicd"'"
    CID="$(${DOCKERBIN} ps -q -f label=com.swarmit.asset=otcbox_intern_vcs_gitea)"
    if [[ "${CID}" != "" ]]
    then
        ${DOCKERBIN} cp ${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/add_local_user_cicd ${CID}:/tmp/
        ${DOCKERBIN} exec -u "0:0" -t ${CID} sh -c 'su git -c "sh /tmp/add_local_user_cicd"' > ${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/add_local_user_cicd.log 2>&1
        RC=${?}
        echo "Check output through file:"
        echo "$ cat ${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/add_local_user_cicd.log" 
        echo "Hook has returned with RC ${RC}"
    else
        echo "Service gitea has no container running!"
    fi
else
    echo "$(date)" >  "${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/add_local_user_cicd.once"
fi
if [[ ! -e "${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/api_token_for_user_cicd.once" ]]
then
    echo "########################################################"
    echo "None Running hooks for service gitea"
    echo "########################################################"
    echo "Hook 'api token for user "cicd"'"
    CID="$(${DOCKERBIN} ps -q -f label=com.swarmit.asset=otcbox_intern_vcs_gitea)"
    if [[ "${CID}" != "" ]]
    then
        ${DOCKERBIN} cp ${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/api_token_for_user_cicd ${CID}:/tmp/
        ${DOCKERBIN} exec -u "0:0" -t ${CID} sh -c 'su git -c "sh /tmp/api_token_for_user_cicd"' > ${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/api_token_for_user_cicd.log 2>&1
        RC=${?}
        echo "Check output through file:"
        echo "$ cat ${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/api_token_for_user_cicd.log" 
        echo "Hook has returned with RC ${RC}"
    else
        echo "Service gitea has no container running!"
    fi
else
    echo "$(date)" >  "${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/api_token_for_user_cicd.once"
fi
if [[ ! -e "${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/add_ssh_key_for_user_cicd.once" ]]
then
    echo "########################################################"
    echo "None Running hooks for service gitea"
    echo "########################################################"
    echo "Hook 'add ssh key for user "cicd"'"
    CID="$(${DOCKERBIN} ps -q -f label=com.swarmit.asset=otcbox_intern_vcs_gitea)"
    if [[ "${CID}" != "" ]]
    then
        ${DOCKERBIN} cp ${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/add_ssh_key_for_user_cicd ${CID}:/tmp/
        ${DOCKERBIN} exec -u "0:0" -t ${CID} sh -c 'su git -c "sh /tmp/add_ssh_key_for_user_cicd"' > ${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/add_ssh_key_for_user_cicd.log 2>&1
        RC=${?}
        echo "Check output through file:"
        echo "$ cat ${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/add_ssh_key_for_user_cicd.log" 
        echo "Hook has returned with RC ${RC}"
    else
        echo "Service gitea has no container running!"
    fi
else
    echo "$(date)" >  "${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/add_ssh_key_for_user_cicd.once"
fi
if [[ ! -e "${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/create_token_for_act_runner.once" ]]
then
    echo "########################################################"
    echo "None Running hooks for service gitea"
    echo "########################################################"
    echo "Hook 'create token for act_runner'"
    CID="$(${DOCKERBIN} ps -q -f label=com.swarmit.asset=otcbox_intern_vcs_gitea)"
    if [[ "${CID}" != "" ]]
    then
        ${DOCKERBIN} cp ${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/create_token_for_act_runner ${CID}:/tmp/
        ${DOCKERBIN} exec -u "0:0" -t ${CID} sh -c 'su git -c "sh /tmp/create_token_for_act_runner"' > ${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/create_token_for_act_runner.log 2>&1
        RC=${?}
        echo "Check output through file:"
        echo "$ cat ${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/create_token_for_act_runner.log" 
        echo "Hook has returned with RC ${RC}"
    else
        echo "Service gitea has no container running!"
    fi
else
    echo "$(date)" >  "${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/create_token_for_act_runner.once"
fi
if [[ ! -e "${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/provide_token_for_act_runner.once" ]]
then
    echo "########################################################"
    echo "None Running hooks for service gitea"
    echo "########################################################"
    echo "Hook 'provide token for act_runner'"
    CID="$(${DOCKERBIN} ps -q -f label=com.swarmit.asset=otcbox_intern_vcs_gitea)"
    if [[ "${CID}" != "" ]]
    then
        ${DOCKERBIN} cp ${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/provide_token_for_act_runner ${CID}:/tmp/
        ${DOCKERBIN} exec -u "0:0" -t ${CID} sh /tmp/provide_token_for_act_runner > ${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/provide_token_for_act_runner.log 2>&1
        RC=${?}
        echo "Check output through file:"
        echo "$ cat ${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/provide_token_for_act_runner.log" 
        echo "Hook has returned with RC ${RC}"
    else
        echo "Service gitea has no container running!"
    fi
else
    echo "$(date)" >  "${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/provide_token_for_act_runner.once"
fi
if [[ ! -e "${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/provide_api_token_for_user_cicd.once" ]]
then
    echo "########################################################"
    echo "None Running hooks for service gitea"
    echo "########################################################"
    echo "Hook 'provide api token for user cicd'"
    CID="$(${DOCKERBIN} ps -q -f label=com.swarmit.asset=otcbox_intern_vcs_gitea)"
    if [[ "${CID}" != "" ]]
    then
        ${DOCKERBIN} cp ${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/provide_api_token_for_user_cicd ${CID}:/tmp/
        ${DOCKERBIN} exec -u "0:0" -t ${CID} sh /tmp/provide_api_token_for_user_cicd > ${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/provide_api_token_for_user_cicd.log 2>&1
        RC=${?}
        echo "Check output through file:"
        echo "$ cat ${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/provide_api_token_for_user_cicd.log" 
        echo "Hook has returned with RC ${RC}"
    else
        echo "Service gitea has no container running!"
    fi
else
    echo "$(date)" >  "${HOOKS_FOLDER}/hooks/otcbox_intern_vcs_gitea/provide_api_token_for_user_cicd.once"
fi