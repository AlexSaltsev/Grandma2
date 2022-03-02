------------------------------------------------
------------ 
------------    Набор готовых функицй для Grandma2
------------ 
------------------------------------------------
------------    Created by AlexSaltsev
------------------------------------------------  

Для использования плагинов в Grandma2 вам необходимо создать пул Plugins (Create Basic Windows > System > Plugins)

Для тех кто только хочет начать изучать LUA вот небольшой пример код как должно работат:

(https://user-images.githubusercontent.com/29582986/156346175-1f137610-e90c-4687-9282-123bf70fe4ae.png)

function print(Value)
  gma.feedback(Value)
  gma.echo(Value)
end

function main()
	print('Hello World')
end
return main


print - название функции
('Hello World')  - значение которое мы отправляем в функцию print на переменную Value
