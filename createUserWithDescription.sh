#!/bin/bash 

# Author: Angel hernandez 
# Date: 08/24/2022
# Description: this script will create a user account with it a description. 

echo "Please provide a user name:"
read u
echo

grep -q $u /etc/passwd  # ? this will throw a 0 status if something is found. 
  if [ $? -eq 0 ]  # if previous command is successfull then: 
    then 
      echo ERROR -- User $u already exist
      echo Please choose another username
      echo 
      exit 0  # ? it will exit the program if something was found in grep, if not it will continue to the next lines below
  fi

useradd $u
echo "Add a description for this new user: "
read description
usermod -c "$description" $u
echo $u account has been created, and $description was added as description.