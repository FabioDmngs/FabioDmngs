#!bin/bash
#Fabio Calculadora

echo "Calculadora"

echo "Digite o primeiro numero"
read num1

echo "Digite o segundo numero"
read num2

echo "Escolha a operacao: +, -, *, /"
read operador


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

echo "O resultado da soma e: $resultado"

