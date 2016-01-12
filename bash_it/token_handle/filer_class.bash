# Base class. (1)
function File()
{
    # A pointer to this Class. (2)
    base=$FUNCNAME
    this=$1
 
    # Declare Properties.
    export ${this}_path=$2
    export ${this}_file=$3
    export ${this}_full_file_string="$HOME/$2/$3"

    # Declare methods.
    for method in $(compgen -A function)
    do
        export ${method/#$base\_/$this\_}="${method} ${this}"
    done
}

function File_get_token()
{
    base=$(expr "$FUNCNAME" : '\([a-zA-Z][a-zA-Z0-9]*\)')
    this=$1
    
    file_to_token_from=$(eval "echo \$${this}_full_file_string")
    token_value=$(<$file_to_token_from)
    
    echo "$token_value"
}

function File_has_token()
{
    base=$(expr "$FUNCNAME" : '\([a-zA-Z][a-zA-Z0-9]*\)')
    this=$1

    file_to_test_for_token=$(eval "echo \$${this}_full_file_string")
    if [[ -s $file_to_test_for_token ]] ; then
        echo "has_token"
    else
        echo ""
    fi
}
 
function File_exists()
{
    base=$(expr "$FUNCNAME" : '\([a-zA-Z][a-zA-Z0-9]*\)')
    this=$1
    
    file_to_test=$(eval "echo \$${this}_full_file_string")
    if [ -f "$file_to_test" ]; then
        echo "found";
    else
        echo "";
    fi
}

: <<'ENDofCOMMENTING'
ENDofCOMMENTING
