here are some sed commands

cat > employee
employee name is dhoni
his salary 12k
he is an accountant                   

cs2016a120@user:~$ sed -n '1,2p' employee
employee name is dhoni
his salary 12k


ed -n -e '1,2p' -e '2,3p' employee
employee name is dhoni
his salary 12k
his salary 12k
he is an accountant
  
 sed -n '1p' employee
employee name is dhoni

Name|Designation|Salary
aalam|Manager|70000
shaik|staff|59000
arun|Head_staff|50000
manohar|Director|80000
aryan|manager|70000
aman|Director|80000
jitesh|Staff|60000
abid|Staff|60000
Inam|Staff|59000
sharath|Staff|60000

$ sed -n '/Manager/p' employee

aalam|Manager|70000

$ sed -n '1,2!p' employee

shaik|staff|59000
arun|Head_staff|50000
manohar|Director|80000
aryan|manager|70000
aman|Director|80000
jitesh|Staff|60000
abid|Staff|60000
Inam|Staff|59000
sharath|Staff|60000


