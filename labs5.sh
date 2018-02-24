

to start using shell script by using vim command that is vim filename.sh
then type the programs to be executed  and then quit the window :wq! 

(1)A program to display sequence of numbers upto 10.

	echo "enter the value of n"
	read n
	for ((i=1;i<=1000;i++))
	do
        	echo "$i"
	done

	


(2)A pogram to display prime numbers from 1 to n(the given range).

	                          prime_1=0
	echo "enter the range"
	read n
	echo " Primenumber between 1 to $n is:"
	echo "1"  
	echo "2"
	for((i=3;i<=n;))
	do
        	for((j=i-1;j>=2;))
        	do
       	        	if [  `expr $i % $j` -ne 0 ] ; then
                        	prime_1=1
                	else
                        	prime_1=0
                        	break
                	fi
                	j=`expr $j - 1`
        	done
        	if [ $prime_1 -eq 1 ] ; then
                	echo $i
        	fi
        	i=`expr $i + 1`

 		
	




(3)A program to check whether the entered number is prime or not.

	
	
	echo enter a number
	read num
	if [ $num -eq 1 ]
	then
        	echo "1 is neither prime nor composite"
	else
        	i=2
        	while [ $i -lt $num ]
        	do
                	if [ `expr $num % $i` -eq 0 ]
                	then
                        	echo $num is not prime
                        	exit
                	fi
                	i=`expr $i + 1`
        	done
        	echo $num is a prime number
	f
