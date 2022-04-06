success()
{
    output="$1"
    tput setaf 2; echo "$output"; tput sgr0
}

success "$@"
