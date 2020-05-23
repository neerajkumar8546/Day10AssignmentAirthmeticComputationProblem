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

   computation2=$(( ($a * $b) + $c ))
   echo $computation2

#Compute Airthmetic Computation Uc4

   echo "Compute Airthmetic Computation Uc4 :- c + a / b "
   computation3=$(( $c + ($a / $b) ))
   echo $computation3

#Compute Airthmetic Computation Uc5

   echo "Compute Airthmetic Computation Uc5 :- a % b + c"

   computation4=$(( ($a % $b) + $c ))
   echo $computation4

#Adding Solutions Into a Dictionary

	printf "\n"
	echo "Adding Solutions Into a Dictionary UC6 :-"
	printf "\n"
	declare -A store_Computation
	store_Computation[1]=$(( $computation1 ));
	store_Computation[2]=$(( $computation2 ));
	store_Computation[3]=$(( $computation3 ));
	store_Computation[4]=$(( $computation4 ));

	echo "Dictionary :- " ${store_Computation[@]}


#Adding Solutions Into a Dictionary

	printf "\n"
	echo "Store Dictionary into Array  "
	printf "\n"

	for (( j=1; j<5; j++ ))
	do
		Store_array[j]=$(( ${store_Computation[$j]} ))
	done
	echo "Array :- "${Store_array[@]}

printf "\n"

#show computation result in the descending order

	echo "show computation result in the descending order Using Bubble Sort "
	 	
		for (( k = 0; k<4; k++ )) 
		do
    		for(( l = 0; l<4-i-1; l++ )) 
    		do
        		if [ ${Store_array[l]} -lt ${Store_array[$((l+1))]} ] 
        		then
            	# swap 
            	temp=${Store_array[l]} 
            	Store_array[$l]=${Store_array[$((l+1))]}   
            	Store_array[$((l+1))]=$temp 
        		fi
    		done
		done
   	echo "show computation result in the Descending Order : " ${Store_array[@]}
		printf "\n"

##show computation result in the descending order
echo "show computation result in the descending order using bubble sort"

for ((i = 0; i<4; i++))
   do
      for((j = 0; j<4-i-1; j++))
      	do

        		if [ ${Store_array[j]} -gt ${Store_array[$((j+1))]} ]
        		then
      		#SWAPPING
            temp=${Store_array[j]}
            Store_array[$j]=${Store_array[$((j+1))]}
            Store_array[$((j+1))]=$temp
        		fi
      	done
   	done
   	echo "show computation result in the Ascending Order "${Store_array[@]}
