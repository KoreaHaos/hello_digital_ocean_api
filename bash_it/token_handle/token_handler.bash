DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/filer_class.bash

function main()
{
    read_token=$(get_read_token)
    read_write_token=$(get_read_write_token);

    echo $read_token
    echo $read_write_token

}

function get_read_token()
{
    File 'read_token1' 'tokens' 'read_token1.txt'
        
    if [ $($read_token1_exists) ]; then
        if [ $($read_token1_has_token) ]; then
            echo $($read_token1_get_token)
        else
            echo ""
        fi
    else
        echo ""
    fi
}

function get_read_write_token()
{
    File 'read_write_token1' 'tokens' 'read_write_token1.txt'
    if [ $($read_write_token1_exists) ]; then
        if [ $($read_write_token1_has_token) ]; then
            echo $($read_write_token1_get_token)
        else
            echo ""
        fi
    else
        echo ""
    fi
}
 
main


: <<'ENDofCOMMENTING'
ENDofCOMMENTING
