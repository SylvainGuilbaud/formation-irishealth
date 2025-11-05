# if only one argument, copy to home directory
# if two arguments, copy to second argument directory
if [ "$#" -eq 1 ]; then
    set -- "$1" "$1"
fi
echo "scp -r -i $AWS_ACCESS_KEY_FILENAME $1 $AWS_USERNAME@$AWS_PUBLIC_DNS:$2"
scp -r -i $AWS_ACCESS_KEY_FILENAME $1 $AWS_USERNAME@$AWS_PUBLIC_DNS:$2
