# check if file exist on server or not

FILE="/tmp/test.txt"

if [[ -f $FILE ]] ; then
echo "file exists!"
else
echo "file doiesn't exists"
fi

