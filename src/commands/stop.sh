stop_command () {
    if ! is_running; then
        error "Devilbox containers are not running"
        return "$KO_CODE"
    fi
    docker-compose stop
    for arg in "$@"; do
        case $arg in
            --r|--remove) docker-compose rm -f; shift;;
        esac
    done

}
