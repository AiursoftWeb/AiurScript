echo '' > ./README.md
echo '# Aiur Script Project' >> ./README.md
echo '' >> ./README.md
echo 'These are some bash script powers Aiursoft projects on Ubuntu.' >> ./README.md
echo '' >> ./README.md
echo '## Before starting' >> ./README.md
echo '' >> ./README.md
echo 'You need to have bash installed. For linux, it is installed by default. For Windows, download it [here](https://git-scm.com).' >> ./README.md
echo '' >> ./README.md
echo '## How to build' >> ./README.md
echo '' >> ./README.md
echo 'Simpliy run the file: `./build_readme.sh`' >> ./README.md
echo '' >> ./README.md
echo '## How to use' >> ./README.md
echo '' >> ./README.md
echo 'Executing the following command to trigger the functions in this repo.' >> ./README.md
echo '' >> ./README.md
echo 'Or you can use our one-line script import. Put the following line to the start of your script.' >> ./README.md
echo '' >> ./README.md
echo '```bash' >> ./README.md
echo "$(sed -n 2p ./import_function.sh)" >> ./README.md
echo '```' >> ./README.md
echo '' >> ./README.md
echo 'Add to call a function, simply write: `aiur func_path/func_name arguments`.' >> ./README.md
echo '' >> ./README.md
echo '### Examples' >> ./README.md
echo '' >> ./README.md
echo '```bash' >> ./README.md
echo '$ aiur Caddy/add_proxy arg1 arg2' >> ./README.md
echo '```' >> ./README.md
echo '' >> ./README.md
echo '```bash' >> ./README.md
echo '$ my_port=$(aiur Network/get_port)' >> ./README.md
echo '```' >> ./README.md

find . -name "*.sh" | grep -v build_readme | while read line 
do
    file=${line/.\//}
    echo $file
    file_no_sh=${file/.sh/}
    file_des=${file_no_sh/_/ }

    echo "### $file_des" >> ./README.md
    echo '' >> ./README.md
    echo "[View file details]($line)" >> ./README.md
    echo '' >> ./README.md
    echo '```bash' >> ./README.md
    echo "$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/$file | sudo bash -s www.example.com" >> ./README.md
    echo '```' >> ./README.md
    echo '' >> ./README.md

done