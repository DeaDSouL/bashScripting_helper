#!/bin/bash

# Yes/No prompt function
#  usage: confirm 'your message' && some_cmd
# source: http://stackoverflow.com/questions/3231804/in-bash-how-to-add-are-you-sure-y-n-to-any-command-or-alias

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
