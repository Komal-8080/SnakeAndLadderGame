#!/bin/bash -x

startPosition=0
playerPosition=0
endPosition=100

function SnakeLadder()
{
	echo "***Lets Play Snake and Ladder Game***"
	echo "Player1 rolled a dice and it is:"
		DicePosition
		CheckForOption
}

function DicePosition()
{
	 roll=$((RANDOM%6+1))
	 echo "$roll"
	 playerPosition=$roll
}

function CheckForOption()
{
	valid=true
        while [ $valid ]
        do
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

		if [ $playerPosition -ge $endPosition ];
	        then
        	        echo "Hurray!! you Won"
        	break
        	elif [ $playerPosition  -le $startPosition ];
        	then
                	echo "Start Again!!"
       		fi
	done
}


SnakeLadder

