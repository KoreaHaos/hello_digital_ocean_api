# This is a bash script for installing packer.
# It was made and tested to work on "custom" Cloud9 VM
# Use at your own risk!

DOWNLOAD_URL=https://releases.hashicorp.com/packer/0.8.6/packer_0.8.6_linux_amd64.zip
DOWNLOAD_SAVE_PATH=~/
DOWNLOAD_SAVE_FILE_NAME=packer_0.8.6_linux_amd64.zip

DOWNLOAD_FILE_PATH_AND_NAME=$DOWNLOAD_SAVE_PATH$DOWNLOAD_SAVE_FILE_NAME

PACKER_DIR=~/packer

WGET_STRING="$DOWNLOAD_URL -O $DOWNLOAD_FILE_PATH_AND_NAME"

wget $WGET_STRING
unzip $DOWNLOAD_FILE_PATH_AND_NAME -d  $PACKER_DIR

echo 'export PATH=$PATH:~/packer/' >> ~/.bashrc

export PATH=$PATH:~/packer/

packer --help

# exec bash
exec bash
source ~/.bashrc
