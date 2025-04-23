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

find . -type f -name '*.bak' -exec rm -- {} +
rm rename-template.sh CHANGELOG.md

poetry version -- 0.1.0
