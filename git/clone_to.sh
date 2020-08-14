clone_to()
{
    repo="$1"
    path="$2"
    _=$(git --help || apt install git -y)
    _=$(ls $path && rm $path -rvf)
    git clone -b master https://github.com/$repo.git $path
}

clone_to "$@"