# Необходимо организовать систему учета для питомника в котором живут домашние и вьючные животные.  <br>
## Задание 1 <br>
Используя команду cat в терминале операционной системы Linux, создать два файла Домашние животные (заполнив файл собаками, кошками,
хомяками) и Вьючные животными заполнив файл Лошадьми, верблюдами и ослы), а затем объединить их. Просмотреть содержимое созданного файла.
Переименовать файл, дав ему новое имя (Друзья человека). <br>
 <br>
![image](https://github.com/GalinaDei/Final_controll_work/assets/114139568/547b7278-02a4-4879-bdf8-8406faad18bb)
 <br>
## Задание 2
Создать директорию, переместить файл туда. <br>
<br>
![image](https://github.com/GalinaDei/Final_controll_work/assets/114139568/a4693a38-2827-47a4-8e45-c0f06065e6f1)
 <br>

## Задание 3
Подключить дополнительный репозиторий MySQL. Установить любой пакет из этого репозитория.<br>
<br>
![image](https://github.com/GalinaDei/Final_controll_work/assets/114139568/c9c00b37-1544-4e8f-bc0e-68f90f2f452f)

![image](https://github.com/GalinaDei/Final_controll_work/assets/114139568/3468d96b-48f5-49f0-be0f-4f7f90629f78)
 <br>

## Задание 4
Установить и удалить deb-пакет с помощью dpkg.<br>
 <br>
![image](https://github.com/GalinaDei/Final_controll_work/assets/114139568/ac4ba89b-5436-47df-99e3-452494690b91)

![image](https://github.com/GalinaDei/Final_controll_work/assets/114139568/433844e2-3af6-436c-a0ad-cd3a80ae6d87)

![image](https://github.com/GalinaDei/Final_controll_work/assets/114139568/54aed068-0e9e-4de4-9244-245f6201fa89)
 <br>
## Задание 5
Выложить историю команд в терминале ubuntu
<br>
**Task 1** <br>
cat > home_animals <br>
dog <br>
cat  <br>
hamster  <br>
cat > pack_animals  <br>
horse м
camel  <br>
donkey  <br>
cat home_animals pack_animals > concated_file  <br>
cat concated_file  <br>
dog  <br>
cat  <br>
hamsterhorse  <br>
camel  <br>
donkey  <br>
mv concated_file human_friends  <br>
**Task 2** <br>
mkdir animal_nursery  <br>
mv human_friends ~/animal_nursery  <br>
<br>
**Task 3** <br>
apt list -a mysql-server  <br>
apt install mysql-server  <br>
**Task 4** <br>
wget https://dev.mysql.com/get/Downloads/MySQL-Router/mysql-router_8.0.33-1ubuntu22.04_amd64.deb  <br>
dpkg -i mysql-router_8.0.33-1ubuntu22.04_amd64.deb  <br>
apt -f install <br>
dpkg -r mysql-router <br>
rm mysql-router_8.0.33-1ubuntu22.04_amd64.deb <br>

## Задание 6
Нарисовать диаграмму, в которой есть класс родительский класс, домашние животные и вьючные животные, в составы которых в случае домашних
животных войдут классы: собаки, кошки, хомяки, а в класс вьючные животные войдут: Лошади, верблюды и ослы). <br>
<br>

![image](https://github.com/GalinaDei/Final_controll_work/assets/114139568/0ee392ad-37af-4dd0-9c31-1601c0cc9b88)

## Задание 7
 В подключенном MySQL репозитории создать базу данных “Друзья человека” <br>
<br>
![image](https://github.com/GalinaDei/Final_controll_work/assets/114139568/5cfe2e57-d61f-47d8-9842-047789aa6b39)
<br>
## Задание 8
 Создать таблицы с иерархией из диаграммы в БД. <br>
<br>

![image](https://github.com/GalinaDei/Final_controll_work/assets/114139568/07a759ab-dcba-4644-9c33-7e4c7b18c898)

![image](https://github.com/GalinaDei/Final_controll_work/assets/114139568/025322c5-b9bb-427c-9967-ce10b626cfb4)
![image](https://github.com/GalinaDei/Final_controll_work/assets/114139568/50e14ac8-a169-4f9a-ad9f-c87852c1808c)
<br>
## Задание 9
Заполнить низкоуровневые таблицы именами(животных), командами которые они выполняют и датами рождения
<br>
![image](https://github.com/GalinaDei/Final_controll_work/assets/114139568/bee34e52-4689-4315-bcbd-845f11e77937)

![image](https://github.com/GalinaDei/Final_controll_work/assets/114139568/1c73906f-f23e-48b9-8345-689f5b471e7f)
<br>
## Задание 10
Удалив из таблицы верблюдов, т.к. верблюдов решили перевезти в другой питомник на зимовку. Объединить таблицы лошади, и ослы в одну таблицу.<br>
<br>
![image](https://github.com/GalinaDei/Final_controll_work/assets/114139568/daa6377c-aca0-4cce-bd8d-dfc98138829d)

![image](https://github.com/GalinaDei/Final_controll_work/assets/114139568/6143bed8-0f5f-4abf-8def-ce42fd0f98cd)
<br>
## Задание 11
Создать новую таблицу “молодые животные” в которую попадут все животные старше 1 года, но младше 3 лет и в отдельном столбце с точностью
до месяца подсчитать возраст животных в новой таблице.<br>
<br>

<br>
## Задание 12
Объединить все таблицы в одну, при этом сохраняя поля, указывающие на прошлую принадлежность к старым таблицам.<br>
![image](https://github.com/GalinaDei/Final_controll_work/assets/114139568/8ad83284-4b38-405c-b839-3adc030948ea)
<br>

<br>
## Задание 13
Создать класс с Инкапсуляцией методов и наследованием по диаграмме.
<br>
<br>

<br>
## Задание 14
Написать программу, имитирующую работу реестра домашних животных.<br>
14.1 Завести новое животное <br>
14.2 определять животное в правильный класс <br>
14.3 увидеть список команд, которое выполняет животное <br>
14.4 обучить животное новым командам <br>
14.5 Реализовать навигацию по меню <br>
<br>

<br>
<br>
## Задание 15
Создайте класс Счетчик, у которого есть метод add(), увеличивающий̆ значение внутренней̆int переменной̆на 1 при нажатие “Завести новое
животное” Сделайте так, чтобы с объектом такого типа можно было работать в блоке try-with-resources. Нужно бросить исключение, если работа с объектом
типа счетчик была не в ресурсном try и/или ресурс остался открыт. Значение считать в ресурсе try, если при заведения животного заполнены все поля. <br>
<br>

<br>
















