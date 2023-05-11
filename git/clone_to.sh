clone_to()
{
    repo="$1"
    path="$2"

    _=$(git --help || apt install git -y)
    _=$(ls $path && rm $path -rf)
    git clone $repo $path
}

clone_to "$@"
