clone_to()
{
    repo="$1"
    path="$2"

    _=$(git --help || apt install git -y)
    rm $path -rf > /dev/null 2>&1
    git clone $repo $path
}

clone_to "$@"
