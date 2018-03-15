in this seesion we learnt the working of awk command
 
cat > awk1.list
dhoni is a cricketer.
he is a finisher.
he is one of the best captains.
he was a very hard working guy.
he is famous for helicopther shot.


1)Delete blank space using awk
  awk -F "|" '!(/ /)' awk1.lst
dhoniisacricketer.
heisafinisher.
heisoneofthebestcaptains.
hewasaveryhardworkingguy.
heisfamousforhelicopthershot.

2)Print only the odd lines of a file
   awk NR%2==1 awk1.lst
cs2016a120@user:~$ awk NR%2==1 awk1.list
dhoni is a cricketer.
he is one of the best captains.
he is famous for helicopther shot.

   
3)Print last line using awk
  awk -F "|" 'END{print}' lab11.lst 
cs2016a120@user:~$ awk -F "|" 'END{print}' awk1.list
he is famous for helicopther shot.


  
Write equavilant command for these commands
4)head -n 5 filename
  awk -F 'NR==1, NR==5{print}' awk1.lst
  
  5)sed -n '5,10p' filename
  awk -F "|" 'NR==5,NR==10 {print}' awk1.lst

