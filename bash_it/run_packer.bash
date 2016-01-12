#!/bin/bash
source a_test_drive.bash

api_token_tester=$(get_read_write_token);

echo api token = $api_token_tester

packer build -var do_api_token=$api_token_tester 'example2-digitalocean.json'
