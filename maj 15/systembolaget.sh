#!/bin/bash

echo -n "födelsedatum ?"
set -x
read birthdate

echo "${birthdate}"

eighteen_years_ago=$(/bin/date --date="18 years ago"  "+%Y%m%d")
eighteen_years_ago_epoch=$(/bin/date --date="18 years ago"  "+%s")
birthdate_epoch=$(/bin/date --date="${birthdate}" "+%s")

if [ ${eighteen_years_ago_epoch} -lt ${birthdate_epoch} ]; then
    echo bli lite äldre

    difference=$(expr ${birthdate_epoch} - ${eighteen_years_ago_epoch})

    exit 1
fi


echo "varsågod att börja scanna"
