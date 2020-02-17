#!/bin/bash
player1=0
p1=0
p2=0
die=$$
rollingDie(){
	die=$((((RANDOM%6))+1))
	echo "$die"
	return $die
}
dieCount=0
playSnakeLadder(){
	player1=$1
	while(($((player1<=100))))
	do
		option=$$
		option=$((RANDOM%3))
		if(($option==0))
		then
			echo "stay wherever you are"
		elif(($option==1))
			then
				rollingDie
				res=$?
				dieCount=$(($dieCount+1))
				temp=$player1
				player1=$((player1+res))
				if(($player1>100))
				then
					player1=$temp
					echo "its a Ladder you have to step $res forward "
					echo "player1 is at position $player1"
				fi
				echo "its a Ladder you have to step $res forward "
				echo "player1 is at position $player1"
			elif (($option==2))
				then
					rollingDie
					res=$?
					dieCount=$(($dieCount+1))
					echo "its a snake bite "
  		#echo "debug $player1"
  		player1=$((player1-res))
  		if(($player1<=0))
  		then
  			echo "you are at starting place only"
  			player1=0
  		fi
  		echo "player1 is at position $player1 after stepping $res backward"
  	fi
  	# if(($player1==100))
  	# then
  	# 	echo "player 1 won"
  	# 	break;
  	# fi
  return $player1
  done
}
echo "die count is $dieCount"

echo "Enter your choice to play snake ladder game :-"
echo "1. Start 3. Stop"
while (($player1<=100))
do
	read input
	case $input in
		1) playSnakeLadder $p1
			p1=$?
			echo "$p1"
			if(($p1==100))
			then
			echo "player 1 won"
			return 
			fi	
			read input 
;;
		2) playSnakeLadder $p2
			p2=$?
			if(($p2==100))
			then
			echo "player 2 won"
			return 
			fi 
			;;
3)
break
;; 
esac
done
