#!/bin/bash -x

StartPosition=0
playerPosition=0

function snakeLaddder()
{
	echo "***Lets Play Snake and Ladder Game***"
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
	playerPosition=$((RANDOM%6+1))
	option=$((RANDOM%3+1))
		case $option in
		1)
			echo "Sorry you cannot play"
			;;
		2)
			echo "Yay!! climb the Ladder"
			playerPosition=$((roll+playerPosition))
			echo "Now player position is: $playerPosition"
			;;
		3)
			echo "Snake Bite go down!!"
			playerPosition=$((roll-playerPosition))
			echo "Now player position is: $playerPosition"
			;;
		esac
}

snakeLaddder
