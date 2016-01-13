DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/token_handle/token_handler.bash

api_token_tester=$(get_read_write_token);

echo api token = $api_token_tester

packer build -var do_api_token=$api_token_tester "/home/ubuntu/workspace/packer_config_files/example2-digitalocean.json"
