#!/bin/bash
echo "Самошина Дарина Игоревна"
echo "Файловый менеджер - 16 вариант"
echo "Данная программа предоставляет управление файлами"

	while :
	do
	clear
	echo "Введите номер действия, которое хотите выполнить"
	echo "1. создать файл"
	echo "2. переместить файл"
	echo "3. удалить файл"
	echo "4. выход"
	
	read command
	case  $command in
		1)
			echo "создание"
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
			echo "[!]Такой команды нет"
		esac
done