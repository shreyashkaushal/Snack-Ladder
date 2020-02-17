#!/bin/bash
player1=0
die=$$
rollingDie(){
	die=$((((RANDOM%6))+1))
	echo "$die"
	return $die
}
playSnakeLadder(){
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
				player1=$((player1+res))
				echo "its a Ladder you have to step $res forward "
				echo "player1 is at position $player1"
			elif (($option==2))
				then
					rollingDie
					res=$?
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
  	done

}

echo "Enter your choice to play snake ladder game :-"
echo "1. Start 2. Stop"
while :
do
	read input
	case $input in
		1) playSnakeLadder
;;
2) break
;; 
esac
done