add_caddy_file()
{
    domain_name="$1"
    path="$2"
    cat /etc/caddy/Caddyfile | grep -q "an easy way" && echo "" > /etc/caddy/Caddyfile
    cat /etc/caddy/Caddyfile | grep -q "Access-Control-Allow-Origin" || echo "
(cors) {
    @origin header Origin {args.0}
    header @origin Access-Control-Allow-Origin \"{args.0}\"
    header @origin Access-Control-Request-Method GET
}
    " > /etc/caddy/Caddyfile
    echo "
$domain_name {
    import cors *;
    root * $path
    file_server
}" >> /etc/caddy/Caddyfile
    systemctl restart caddy.service
}

add_caddy_file "$@"