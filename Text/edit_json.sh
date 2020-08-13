update_settings()
{
    key="$1"
    value="$2"
    path="$3"
    dbFixedString=$(echo "\"$key\": \"$value\"")
    dbLineNumber=$(grep -n \"$key\" $path/appsettings.Production.json | cut -d : -f 1)
    pattern=$(echo $dbLineNumber)s/.*/$dbFixedString/
    sed -i "$pattern" $path/appsettings.Production.json
}