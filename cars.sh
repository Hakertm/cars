#! /bin/bash
# cars.sh
# Erik Fryanov


while true
do
	echo "Enter 1 to enter a new car, enter 2 to display the list of cars, or enter 3 to quit and exit the program."
	read user_input
	case $user_input in
		"1")
			echo "Enter the year of the car: "
			read year
			echo "Enter the make of the car: "
			read make
			echo "Enter the model of the car: "
			read model
			echo "${year}:${make}:${model}"  >> My_old_cars.txt
		;;
		"2") 
			sort My_old_cars.txt
		;;
		"3") 
			echo "Goodbye"
			break
		;;
		*) echo "Invalid input.";;
	esac
done

