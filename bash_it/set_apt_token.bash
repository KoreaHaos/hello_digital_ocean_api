#!/bin/bash

# a variable to run it automatically.
GET_CONSOLE=false
DIGITAL_OCEAN_USER_NAME=put_your_digital_ocean_username_here
DIGITAL_OCEAN_TOKEN_VALUE=put_your_digital_ocean_token_here

printf "\nThis is a bash script is for saving an api token.\n\n"

if [ "$GET_CONSOLE" = true ];
then
    printf "Would you like to save an api token on your machine?\n"
    printf "('Y' continues. Anything else quits)\n : "
    read user_requests_continue

    if [ "$user_requests_continue" = "Y" ];
    then
        printf "OK.\nLet's do this!\n\n"
    else
        printf "Goodbye!\n"
    exit
    fi
else
    printf "RUNNING WITH NO CONSOLE INPUT!\n\n"
fi

# DIR variable = current directory.
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# TOKEN_DIRECTORY variable = used for storage directory of tokens.
TOKEN_DIRECTORY="digital_ocean_api_token_dir"

printf "DIR variable = %s\n" $DIR
printf "Directory to create = %s\n" $HOME/$TOKEN_DIRECTORY

if [ "$GET_CONSOLE" = true ];
then
    
    printf "Would you like to store your token in the directory?\n"
    
    printf "('Y' continues, Anything else changes where the token is stored.)\n : "
    read users_input
    printf "\nread : %s\n\n" $users_input
    
    if [ "$users_input" = "Y" ]; then
    printf "OK.\nLet's do this!\n"
    else
    printf "I can't change the directory yet, sorry :(\n"
    exit
    fi
else
    printf "FULL SPEED AHEAD!\n"
fi

if [ -d "$HOME/$TOKEN_DIRECTORY" ]; then
    printf "Directory %s exists.\n" $TOKEN_DIRECTORY
else
    printf "Creating directory : %s\n" $HOME/$TOKEN_DIRECTORY
    mkdir $HOME/$TOKEN_DIRECTORY
fi

config_file_string="var config = { \"db_username\": \"$DIGITAL_OCEAN_USER_NAME\", \"db_password\": \"$DIGITAL_OCEAN_TOKEN_VALUE\" }; module.exports = config;"

echo $config_file_string > $HOME/$TOKEN_DIRECTORY/config.js

# non-used code storage...
: <<'ENDofCOMMENTING'


ENDofCOMMENTING
