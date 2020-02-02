config_command () {
    for arg in "$@"; do
        case $arg in
            -h=\*|--httpd=\*) get_all_httpd_versions; shift;;
            -h=*|--httpd=*) set_httpd_version "${arg#*=}"; shift;;
            -h|--httpd) get_current_httpd_version; shift;;
            -p=\*|--php=\*) get_all_php_versions; shift;;
            -p=*|--php=*) set_php_version "${arg#*=}"; shift;;
            -p|--php) get_current_php_version; shift;;
            -m=\*|--mysql=\*) get_all_mysql_versions; shift;;
            -m=*|--mysql=*) set_mysql_version "${arg#*=}"; shift;;
            -m|--mysql) get_current_mysql_version; shift;;
            -r=*|--root=*) set_document_root "${arg#*=}"; shift;;
            -r|--root) get_current_document_root; shift;;
            -w=*|--www=*) set_projects_path "${arg#*=}"; shift;;
            -w|--www) get_current_projects_path; shift;;
        esac
    done
}
