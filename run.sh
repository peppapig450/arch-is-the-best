#!/bin/bash
shopt -s globstar
GLOBIGNORE="**/alt/**"

for dir in **/; do
    # Check if run.sh exists and is executable in the directory
    if [ -x "${dir}run.sh" ]; then
        # Remove trailing slash from directory path
        dir="${dir%/}"
        echo "Now running ${dir}"
        echo "--------------------------------------"
        # Change directory and execute run.sh
        (cd "${dir}" && ./run.sh)
        echo "--------------------------------------"
    fi
done
