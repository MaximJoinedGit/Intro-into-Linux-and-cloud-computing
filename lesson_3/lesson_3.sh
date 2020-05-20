# 1. С помощью текстового редактора Vim создать файл с программой на Python, выводящей текст Hello, world!

mkdir GeekBrains
cd GeekBrains
mkdir lesson_3
vim lesson_3/hello.py

# i 
# print('Hello, world!')
# esc
# :wq

# 2. Запустить команду, определяющую число строк в файле.

wc -l lesson_3/hello.py

# 3. Создать еще один файл с командой на Python, выводящей текст Linear regression.

nano lesson_3/linear.py

# print('Linear regression')
# ^O
# ^X

# 4. Объединить эти два файла с помощью команды cat.

cat lesson_3/hello.py lesson_3/linear.py > lesson_3/two_files.py

# 5. Придумать три случая применения команды cat для работы с текстовыми файлами.

# Количество символов во всех файлах с расширением .py
cat lesson_3/*.py | wc -l

# Показать все строки в файлах с расширением .py
cat -e lesson_3/*.py 

# Запись ввода в файл
cat > lesson_3/simple.py
print('There are simple calcs.')
print(2 + 2)
print(10 * 10)
print('The end')
^D
