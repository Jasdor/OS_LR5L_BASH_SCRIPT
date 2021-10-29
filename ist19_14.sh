#!/bin/bash
echo 'enter "help" to see comands';
p=1 ;

while [[ $p -ne "0" ]] ; do
	echo 
	echo "Текущая дирректория"
	pwd
	echo "Введите комнду"
	read  command dir
	if [[ $command == "help" ]] ; then
		echo "
dir-текущий каталог
cd <name> - перейти в каталог
cd .. - перейти в предыдущий каталог
exit-выйти из консоли" 
		
	elif [[ $command == "dir" ]] ; then
		echo ""
		dir -1 -b --group-directories-first
		
	elif [[ $command == "cd" ]] && [[ $dir == ".." ]] ; then
		cd .. 
		
	elif  [[ $command == "cd" ]] &&  [[ $dir != ".." ]] &&  [[ -n $dir   ]]  ; then
		cd $dir
		
	
	elif [[ $command == "exit" ]] ; then
		p="0" 
	else 
		echo "Wrong command! Enter Another!" 
	fi
done
