source filer.bash

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
    File 'read_token1' 'tokens' 'read_token1.txt'
    File 'read_write_token1' 'tokens' 'read_write_token1.txt'
    
    if [ $($read_token1_exists) ]; then
        echo "found file 1"
        if [ $($read_token1_has_token) ]; then
            echo $($read_token1_get_token)
        else
            echo "no token."
        fi
    else
        echo "no file 1"
    fi
    
    if [ $($read_write_token1_exists) ]; then
        echo "found file 2"
        if [ $($read_write_token1_has_token) ]; then
            echo "has token"
            echo $($read_write_token1_has_token)
        else
            echo "no token."
        fi
    else
        echo "no file 2"
    fi
ENDofCOMMENTING
