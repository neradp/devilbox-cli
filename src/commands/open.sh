open_http_intranet () {
    cygstart "http://devilbox.devel" 2> /dev/null >/dev/null
}

open_https_intranet () {
    cygstart "https://devilbox.devel/" 2> /dev/null >/dev/null
}

open_command () {
    if ! is_running; then
        error "Devilbox containers are not running"
        return "$KO_CODE"
    fi
    if [[ $# -eq 0 ]] ; then
        open_https_intranet
    else
        for arg in "$@"; do
            case $arg in
                -h|--http) open_http_intranet; shift;;
            esac
        done
    fi
}
