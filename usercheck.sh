#!/bin/bash


echo "Enter Username" 
read login

echo "Enter Password"
read password

if [[ ( $login == "aluno" && $password == "aluno" ) ]]
then
echo "Valid User"

else
echo "Invalid User"

fi
