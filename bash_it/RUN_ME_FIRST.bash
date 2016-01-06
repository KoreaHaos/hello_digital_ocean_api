function say_hello {
    echo hello!
}

function return_hello() {
    local return_value='hello world!'
    echo $return_value
}
say_hello
test=$(return_hello)
echo $test
