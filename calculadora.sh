#!bin/bash
#Fabio Calculadora
#Bento Quirino

echo "Calculadora"


echo "Escolha a operacao: +, -, *, /"
read operador

echo "Digite o primeiro numero"
read num1

echo "Digite o segundo numero"
read num2


if [ "$operador" = "+" ]; then
   resultado=$(echo "$num1 + $num2" | bc)

elif [ "$operador" = "-" ]; then
   resultado=$(echo "$num1 - $num2" | bc)

elif [ "$operador" = "*" ]; then
   resultado=$(echo "$num1 * $num2" | bc)

elif [ "$operador" = "/" ]; then
   resultado=$(echo "$num1 / $num2" | bc)

else 

echo "Operador invalido!"

fi

echo "O resultado da operacao e: $resultado"

