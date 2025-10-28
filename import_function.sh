# Put this function in the head of your code.
aiur() { arg="$( cut -d ' ' -f 2- <<< "$@" )" && curl -sL https://gitlab.aiursoft.com/aiursoft/aiurscript/-/raw/master/$1.sh | sudo bash -s $arg; }
# To call a function like Caddy/add_proxy
# aiur Caddy/add_proxy arg1 12345
