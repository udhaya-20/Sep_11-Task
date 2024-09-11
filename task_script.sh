#!/bin/bash

while true
do
	read -p "Enter username:" user_name
	read -p "Enter password: " password
	if [ -z $user_name ]
	then
		echo "Error: Username cannot be empty"
	fi
	if [ -z $password ]
	then
		echo "Error: Password cannot be empty"
	fi
	if [ $user_name = "admin" -o $user_name = "Developer" -a $password = "Administrator123" -o $password = "JavaPython@123" ]
	then
		echo "Successfully logged in to the user '$user_name' "
		echo ""
		read -p "Enter a character: " char
		if [ -z $char ]
		then
			echo "Error: Character cannot be empty"

			elif [ $char = 'a' -o $char = 'A' -o $char = 'e' -o $char = 'E' -o $char = 'i' -o $char = 'I' -o $char = 'o' -o $char = 'O' -o $char = 'u' -o $char = 'U' ]
			then
				echo "Your charcter '$char' is vowel"
				echo ""
				read -p "Enter your age: " age
				if [ -z $age ]
				then
					echo "Error: Age cannot be empty"
				elif [ $age -lt 0 ]
				then
					echo "Sorry!,Invalid Input"
				elif [ $age -ge 0 -a $age -lt 13 ]
				then
					echo "You are an 'Child'"
				elif [ $age -ge 13 -a $age -le 19 ]
				then
					echo "You are an 'Teenager'"
				elif [ $age -ge 20 -a $age -le 60 ]
				then 
					echo "You are an 'Adult'"
				elif [ $age -gt 60 ]
				then
					echo "You are in 'Oldage'"
				else
					echo "Error: Invalid Input"
					exit 0
				fi
			else
				echo "Your character '$char' is not a vowel"
				exit 0
		fi
	else
		echo "Username or Password is Incorrect"
		exit 0

	fi
	exit 0
done

