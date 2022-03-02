------------------------------------------------
------------ 
------------    Набор готовых функицй для Grandma2
------------ 
------------------------------------------------
------------    Created by AlexSaltsev
------------------------------------------------  

Для использования плагинов в Grandma2 вам необходимо создать пул Plugins (Create Basic Windows > System > Plugins)

Для тех кто только хочет начать изучать LUA вот небольшой пример код как должно работат:

![img](https://user-images.githubusercontent.com/29582986/156346354-4ffc31f9-9266-4423-8a6f-c370f013fddb.png)


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
