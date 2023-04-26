#!/bin/bash

RED='\033[0;31m'
NO_COLOR='\033[0m'

echo "Самошина Дарина Игоревна"
echo "Файловый менеджер - 16 вариант"
echo "Данная программа предоставляет управление файлами"

	while :
	do
	echo "1. создать файл"
	echo "2. переместить файл"
	echo "3. удалить файл"
	echo "4. выход"	
	
	read -p $"Выберете команду:" command
	case  $command in
		1)
			while
			do
				echo "Введите имя для нового файла"
				read fileName
			done
			;;
		2)
			echo "преместить"
			;;
		3)
			echo "удалить "
			;;
		4)
			break
			;;
		*)
			echo -e "${RED}[!]Такой команды нет${NO_COLOR}"
		esac
done