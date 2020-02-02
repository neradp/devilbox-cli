stop_command () {
    if ! is_running; then
        error "Devilbox containers are not running"
        return "$KO_CODE"
    fi
    if [[ $# -eq 0 ]] ; then
        docker-compose stop
    else
        for arg in "$@"; do
            case $arg in
                -r|--remove) docker-compose stop ; docker-compose rm -f; shift;;
            esac
        done
    fi
}
