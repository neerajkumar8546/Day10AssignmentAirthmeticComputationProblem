#!/bin/bash -x


echo "Welcome to the Arithmetic Computations Program"


#Take Three input
 	read -p "Enter first Number" a
   read -p "Enter Second Number" b
   read -p "Enter Third Number" c

	echo "Taken Inputs are = " $a " " $b " " $c

#Compute Airthmeic computation UC2

echo "Compute Airthmeic computation UC2 :- a + b * c "

   computation1=$(( $a + ($b * $c) ))
   echo $computation1

#Compute Airthmetic Computation Uc3

   echo "Compute Airthmetic Computation Uc3 :- a * b + c"

   Computation2=$(( ($a * $b) + $c ))
   echo $Computation2

#Compute Airthmetic Computation Uc4

   echo "Compute Airthmetic Computation Uc4 :- c + a / b "
   computation3=$(( $c + ($a / $b) ))
   echo $computation3

#Compute Airthmetic Computation Uc5

   echo "Compute Airthmetic Computation Uc5 :- a % b + c"

   Computation4=$(( ($a % $b) + $c ))
   echo $Computation4
