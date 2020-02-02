exec_command () {

    if ! is_running; then
        error "Devilbox containers are not running"
        return "$KO_CODE"
    fi
    local projets_dir
    project_dir=$(grep -Eo "^HOST_PATH_HTTPD_DATADIR+[[:alnum:][:punct:]]*" "$ENV_FILE" | sed "s/.*=//g")/$PROJECT
    local remote_dir
    remote_dir=/shared/httpd/$PROJECT
    if [ -d "$project_dir" ]; then
        winpty -Xallow-non-tty docker-compose exec --user devilbox --workdir $remote_dir  php $*
    else
       error "Can run commands only in project dir $project_dir"
    fi

}
