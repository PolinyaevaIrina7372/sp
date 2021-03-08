echo 'Автор: Ирина Полиняева'

while true;
do
	echo 'Введите действие: создать (с), удалить (у), переместить (п)'
	read choice
	
	if [ "$choice" == "с" ]
	then
		echo 'Введите имя файла для создания'
		read source	
		if [ -f $source ]
		then
			echo 'Ошибка: файл существует'
			break
		fi
		touch $source
		echo 'Файл создан'
	elif [ "$choice" == "у" ]
	then
		echo 'Введите имя файла для удаления'
		read source	
		if [ ! -f $source ]
		then
			echo 'Ошибка: файл не найден'
			break
		fi
		rm $source
		echo 'Файл удалён'
	elif [ "$choice" == "п" ]
	then
		echo 'Введите имя файла для перемещения'
		read source	
		echo 'Введите имя в которую нужно переместить файл'
		read destination
		if [ ! -d $destination ]
		then
			echo 'Ошибка: директории, в которую нужно переместить файл, не существует'
			break
		fi
		mv $source $destination
		echo 'Файл перемещен'
	else
		echo 'Ошибка: действие не распознано'
	fi

	echo 'Продолжить? да / нет'
	read continue
	while [ "$continue" != "да" ] && [ "$continue" != "нет" ]
	do
		echo 'Введите да или нет'
		read continue
	done
	if [ "$continue" == "нет" ]
	then
		break
	fi
done

