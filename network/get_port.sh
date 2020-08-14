get_port()
{
    while true; 
    do
        local PORT=$(shuf -i 40000-65000 -n 1)
        ss -lpn | grep -q ":$PORT " || echo $PORT && break
    done
}

get_port "$@"