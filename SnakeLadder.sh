#!/bin/bash
echo "    Snake Ladder game simulation    "
echo "===================================================================="
num1=100
num2=91
for((i=0;i<10;i++))
do
	a=$num1
	b=$num2
echo -n " " 
	for((j=0;j<10;j++))
	do
	if(($((i%2))==1))
	then
		echo -n "$b ||"
		b=$((b+1))
	elif(($((i%2))==0)) 
	then
		echo -n "$a ||"
		a=$((a-1))
	fi
	done
	num1=$((num1-10))
	num2=$((num2-10))	
    echo " "
done
echo "===================================================================="
#useCase1
echo "Game started"
player1=0
#useCase2
player1=0
die=$$
rollingDie(){
	die=$((((RANDOM%6))+1))
	echo "$die"
	return $die
}
#useCase3
playSnakeLadder(){
option=$$
option=$((RANDOM%3))
 if(($option==0))
 then
 	echo "stay wherever you are"
  elif(($option==1))
  	then
  		rollingDie
  		res=$?
  		echo "its a Ladder you have to step $res forward "
  		player1=$((player1+res))
  		echo "player1 is at position $player1"
  	elif (($option==2))
  		then
  		rollingDie
  		res=$?
  		echo "its a snake bite "
#useCase4
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

}
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

	read input
	case $input in
		1) playSnakeLadder
			;;
		2) break
			;; 
esac
done
