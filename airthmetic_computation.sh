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
