#!/bin/bash

# Yes/No prompt function
# usage: confirm 'your message' && some_cmd

confirm() {
    while true; do
            read -r -p "${1:-Are you sure? [y/N]} " response
            case $response in
            [yY][eE][sS]|[yY])
                ret=true
                break
                ;;
            [nN][oO]|[nN])
                ret=false
                break
                ;;
            *)
                echo 'Invalid answer!'
                ;;
        esac
    done
    $ret
}
