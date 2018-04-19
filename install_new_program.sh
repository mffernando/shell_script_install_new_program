#!/bin/bash

#check root user
if [ "$(id -u)" != "0" ]; then
echo "Root user only!"
else
echo "Root user OK!"

echo "Updating repositories... "
if ! apt-get update
  then "Error, try again! "
exit 1
fi
echo "Updating repositories OK!"

echo -e "What do you want to install?"
read VARIABLE
if ! apt-get install $VARIABLE -y
  then
echo "$VARIABLE not identified, try again!"
exit 1
fi
echo "$VARIABLE successfully installed!"

fi


