update_settings()
{
    key="$1"
    if [[ "$key" == "" ]]; 
    then
        echo "You must specify a key!";
        return 9;
    fi;
    value="$2"
    if [[ "$value" == "" ]]; 
    then
        echo "You must specify a value!";
        return 9;
    fi;
    path="$3"
    if [[ "$path" == "" ]]; 
    then
        path = "."
    fi;
    dbFixedString=$(echo "\"$key\": \"$value\",")
    dbLineNumber=$(grep -n \"$key\" $path/appsettings.Production.json | cut -d : -f 1)
    pattern=$(echo $dbLineNumber)s/.*/$dbFixedString/
    sed -i "$pattern" $path/appsettings.Production.json
}

update_settings "$@"