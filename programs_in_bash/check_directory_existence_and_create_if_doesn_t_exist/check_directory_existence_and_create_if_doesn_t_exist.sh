if [ -d "$1" ]
then
    echo "Directory exists"
else
    echo "Directory does not exist"
    mkdir $1
fi