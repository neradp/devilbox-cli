get_current_httpd_version () {
    get_readable_current_choice "HTTPD" "$HTTPD_CONFIG"
}

get_all_httpd_versions () {
    get_readable_all_choices "HTTPD" "$HTTPD_CONFIG"
}

set_httpd_version () {
    local new=$1
    set_readable_choice "HTTPD" "$HTTPD_CONFIG" "$new"
}
