#!/usr/bin.env bash

python3 manage.py test

if [ $? -eq 0]; then
    git push heroku main
    heroku run python3 manage.py collecstatic
    exit 0
fi

echo "there are errors in the code."
exit 1 
