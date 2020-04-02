#!/bin/bash
# Bash Menu Script Example
printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
PS3='Please enter your choice: '
options=("Files excluding *.sh changed to 644 recursively" "Directories changed to 755 recursively" "Quit and list files with new permissions")

select opt in "${options[@]}"
do
    case $opt in
        "Files excluding *.sh changed to 644 recursively")
            echo "changing file permissions only (not dirs) to 644 for present dir and all subdirs, leave *.sh executable"  && find . -not -name "*.sh" -type f -print0 | xargs -0 chmod 644
            ;;
        "Directories changed to 755 recursively")
            echo "Directories changed to 755 recursively" && find . -type d -print0 | xargs -0 chmod 755
            ;;
        "Quit and list files with new permissions")
            ls -la --color && printf "\n\n\n" && echo "Listing Files and Quitting"
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
