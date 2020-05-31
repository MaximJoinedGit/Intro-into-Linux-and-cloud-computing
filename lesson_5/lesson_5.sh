# 1. Запустить htop и посмотреть, сколько процессоров и оперативной памяти есть на сервере.

# Команда htop запущена. Процессор один, используется на 0.0%, оперативная память 111М из 979М.



# 2. Найти все программы с расширением .py.

find ./ -type f -name "*py"

# ubuntu@ip-172-31-19-27:~$ find ./ -type f -name "*py"
# ./hello.py
# ./new_user_home/counter.py

# Также создадим папку python, создадим в ней файл test.py, чтобы убедиться, что отображаются все файлы с расширением.

mkdir python
touch ~/python/test.py
find ./ -type f -name "*py"

# ubuntu@ip-172-31-19-27:~$ find ./ -type f -name "*py"
# ./hello.py
# ./python/test.py
# ./new_user_home/counter.py



# 3. * Создать и запустить программу на Python, выводящую числа от 0 до 100 включительно.
# Запустить htop во время выполнения программы и найти выполняемую программу в списке процессов, используя поиск по ключевому слову python (использовать средства поиска htop).

# Для редактирования файла counter.py, созданного в прошлом дз необходимо предоставить доступ пользователю ubuntu на редактирование файлов.
# Сменим пользователя на new_user и разрешим доступ к папке и файлу для всех пользователей на все действия.

su new_user
chmod +xwr new_user_home
cd new_user_home
chmod +xwr ~/counter.py
exit

# Подредактируем файл counter.py
vim counter.py

# Допишем в первой строке файла "#!/usr/bin/python3"
# А также изменим текст программы, чтобы продлить время ее выполнения. Поставим количество циклов от 1 до 99 ключительно.
# Запустим программу в фоновом режиме, выводя числа не на экран а в файл counter.log

touch counter.log
./counter.py > ./counter.log &
htop

# После того, как программа counter.py работает и записывает значения в фоновом режиме, в программе htop найдем в поиске (F3) процесс по ключесвому слову "python".



# 4 **Вывести идентификаторы трёх процессов которые принадлежат пользователю root и потребляют наибольший объём памяти. Задание нужно выполнить одной командой.

# С помощью команды top
top -U root -b -o +MEM | head -n 10

# С помощью команды ps. Можно вывести только идентификатор и объем потребляемой памяти в %.
ps -eo pid,%mem --sort=-%mem | head -n 4
