echo "Hello Again!"
TOKEN_DIRECTORY="$HOME/tokens"
READ_TOKEN_FILE_PATH=$TOKEN_DIRECTORY/read_token1.txt
READ_WRITE_TOKEN_FILE_PATH=$TOKEN_DIRECTORY/read_write_token1.txt
printf "Enter read token : "
read read_token
echo $read_token
printf "Enter read_write token : "
read read_write_token
echo $read_write_token
if [ -d "$TOKEN_DIRECTORY" ]; then
    # Control will enter here if $DIRECTORY exists.
    echo "$TOKEN_DIRECTORY already exists."
else
    echo "Creating $TOKEN_DIRECTORY"
    mkdir -p $TOKEN_DIRECTORY
fi

if [ -e "$READ_TOKEN_FILE_PATH" ]; then
    # Control will enter here if $DIRECTORY exists.
    echo "$READ_TOKEN_FILE_PATH already exists."
else
    echo "$READ_TOKEN_FILE_PATH does not exists."
    echo "Creating $READ_TOKEN_FILE_PATH"
    echo "$read_token" > $READ_TOKEN_FILE_PATH
fi

if [ -e "$READ_WRITE_TOKEN_FILE_PATH" ]; then
    # Control will enter here if $DIRECTORY exists.
    echo "$READ_WRITE_TOKEN_FILE_PATH already exists."
else
    echo "$READ_WRITE_TOKEN_FILE_PATH does not exists."
    echo "Creating $READ_WRITE_TOKEN_FILE_PATH"
    echo "$read_write_token" > $READ_WRITE_TOKEN_FILE_PATH
fi

