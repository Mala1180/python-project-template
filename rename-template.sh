#!/bin/bash

NEW_NAME=$1

if [[ -z "$NEW_NAME" ]]; then
    echo "Must provide a new name as argument" 1>&2
    exit 1
fi

find . -type f -not -iname '*.pyc' -not -path '*.git*' | while IFS= read -r FILE; do
    sed -i'.bak' -e "s/my_project/$NEW_NAME/g" "$FILE"
done

find .github -type f -not -iname '*.pyc' | while IFS= read -r FILE; do
    sed -i'.bak' -e "s/my_project/$NEW_NAME/g" "$FILE"
done

sed -i'.bak' -e "s/python-project-template__Mala1180/$NEW_NAME/g" pyproject.toml

mv my_project $NEW_NAME

rm .github/**/*.bak **/*.bak .*.bak *.bak *.sh