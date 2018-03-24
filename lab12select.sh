
write a shell script using select commands to display the menu



names='aman abid shoaib aalam quit'
PS3='select'
select var in $names
do
        if [ $var == 'quit' ]
                then
                        break
                fi
                echo " hello $var "
        done


:~$ vim sel.sh
cs2016a120@user:~$ ./sel.sh
bash: ./sel.sh: Permission denied
cs2016a120@user:~$ chmod +x sel.sh
cs2016a120@user:~$ ./sel.sh
1) aman
2) abid
3) shoaib
4) aalam
5) quit
select1
 hello aman 
select3
 hello shoaib 
select4
 hello aalam 
select2
 hello abid 
select5


