get_current_mysql_version () {
    get_readable_current_choice "MySQL" "$MYSQL_CONFIG"
}

get_all_mysql_versions () {
    get_readable_all_choices "MySQL" "$MYSQL_CONFIG"
}

set_mysql_version () {
    local new=$1
    set_readable_choice "MySQL" "$MYSQL_CONFIG" "$new"
}
