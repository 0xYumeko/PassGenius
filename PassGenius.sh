#!/bin/bash


letters="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
symbols="!@#$%^&*()_+*/"
numbers="123456789"


echo -e "\033[36m\033[1m"  
cat << "EOF" 
 ░▒▓████████▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ 
 ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ 
 ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ 
 ░▒▓█▓▒░░▒▓█▓▒░  ░▒▓██████▓▒░  
 ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ 
 ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ 
 ░▒▓████████▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ 
EOF
echo -e "\033[0m"  


read -p "dkhl ra9m ? :  " l
read -p "3awd dkhl  ?  : " s
read -p "srbi  ? : " n


choice1=$(echo "$letters" | fold -w1 | shuf | head -n $l | tr -d '\n')


choice2=$(echo "$symbols" | fold -w1 | shuf | head -n $s | tr -d '\n')


choice3=$(echo "$numbers" | fold -w1 | shuf | head -n $n | tr -d '\n')

password="$choice1$choice2$choice3"

final_password=$(echo "$password" | fold -w1 | shuf | tr -d '\n')

echo "Your generated password is: $final_password"
