
edit_json()
{
    pattern="$1"
    value="$2"
    file="$3"

    cat $file | jq ".$pattern = \"$value\"" | sponge $file
}

edit_json "$@"