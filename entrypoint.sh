#!/bin/sh -l

SOURCE_URL="$3"
FORK_URL="$4"

echo "::debug SOURCE_URL: ${SOURCE_URL}"
echo "::debug FORK_URL: ${FORK_URL}"

if [ ! -d .cloneDir-source ]; then
    echo "::debug cloning..."
    git clone --bare "${SOURCE_URL}" ".cloneDir-source"
    if [ ! -d .cloneDir-source ]; then
        echo "::error The directory was not created, cloning must have failed.";
        exit 1;
    fi
    cd ".cloneDir-source"
else
    cd ".cloneDir-source"
    echo "::debug fetching..."
    git fetch --all -p -P
fi

git push "${FORK_URL}"
