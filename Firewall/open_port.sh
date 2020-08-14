open_port()
{
    port_to_open="$1";
    if [[ "$port_to_open" == "" ]]; 
    then
        echo "You must specify a port!";
        return 9;
    fi;
    ufw allow $port_to_open/tcp;
    ufw reload;
}

open_port "$@"
