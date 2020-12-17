#!/bin/bash -x


function snakeLaddder()
{
	echo "***Lets Play Snake and Ladder Game***"
		StartPosition=0
		playerPosition=0
	echo "Player1 rolled a dice and it is:"
		DicePosition
		checkForOption
}

function DicePosition()
{
	roll=$((RANDOM%6+1))
	echo "$roll"
}

function checkForOption()
{
	decalre -A playerPosition
	playerPosition=([1]=0)

	option=$((RANDOM%3+1))
		if[ $option -eq 1 ];
		then
			echo "Sorry you cannot play"
		elif[ $option -eq 2 ];
		then
			echo "Yay!! climb the Ladder"

		elif[ $option -eq 3 ];
		then
			echo "Snake Bite go down!!"
		fi
}


snakeLaddder
