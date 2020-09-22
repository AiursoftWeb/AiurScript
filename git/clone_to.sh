clone_to()
{
    repo="$1"
    path="$2"
    branch_name=$3;

    if [[ $branch_name == "" ]];
    then
        branch_name="master"
        echo "Using branch name: $branch_name"
    else
        echo "Branch name is: $branch_name"
    fi
    
    _=$(git --help || apt install git -y)
    _=$(ls $path && rm $path -rvf)
    git clone -b $branch_name https://github.com/$repo.git $path
}

clone_to "$@"
