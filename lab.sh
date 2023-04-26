#!/bin/bash

RED="\033[0;31m"
GREEN="\033[32m"
NO_COLOR="\033[0m"

echo "Самошина Дарина Игоревна"
echo "Файловый менеджер - 16 вариант"
echo "Данная программа предоставляет управление файлами"

	while :
	do
	echo "1. создать файл"
	echo "2. удалить файл"
	echo "3. переместить файл"
	echo "4. выход"	
	
	read -p $"Выберете команду: " command
	case  $command in
		1)
			info="Введите имя для нового файла"
			while :
			do
				echo -e $info
				read -p "Имя файла: " fileName
				if [ -z $fileName ]; then 
					info="${RED}Вы не ввели название файла. Повторите попытку${NO_COLOR}"
				elif test -f "$fileName"; then
					info="${RED}Файл с таким названием уже существует. Повторите попытку${NO_COLOR}"
				else
					touch $fileName
					echo -e "${GREEN}Файл создан.${NO_COLOR}"
					break
				fi
			done
			;;
		2)
			info="Введите имя файла для удаления"
			while :
			do
				echo -e $info
				read -p "Имя файла: " fileName
				if [ -z $fileName ]; then 
					info="${RED}Вы не ввели название файла. Повторите попытку${NO_COLOR}"
				elif test ! -f "$fileName"; then
					info="${RED}Файл с таким названием не существует. Повторите попытку${NO_COLOR}"
				else
					rm $fileName
					echo -e "${GREEN}Файл удален.${NO_COLOR}"
					break
				fi
			done
			;;
		3)
			echo "преместить "
			;;
		4)
			break
			;;
		*)
			echo -e "${RED}[!]Такой команды нет${NO_COLOR}"
		esac
done