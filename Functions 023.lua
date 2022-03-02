------------------------------------------------
------------ 
------------    Набор готовых функицй для Grandma2
------------    Version: 0.2.3
------------    Update date: 02.03.2022
------------ 
------------------------------------------------
------------    Created by AlexSaltsev
------------------------------------------------  

---
--- Общие функции
---


------------    Функция Print
function print(Value)
  gma.feedback(Value)
  gma.echo(Value)
  ---Например
  ---print('Hello World')
end

------------    Получить значение Index (Var)
function getIndex (ma2Name)
  local handle = gma.show.getobj.handle(ma2Name)
  local index = gma.show.getobj.index(handle)
  return index
  ---Например
  ---getIndex('Exec 201')
end

------------    Получить значение Index (String)
function getClass (ma2Name)
  local handle = gma.show.getobj.handle(ma2Name)
  local class = gma.show.getobj.class(handle)
  return class
  ---Например
  ---getClass('Exec 201')
end

------------    Получить значение Label (String)
function getLabel (ma2Name)
  local handle = gma.show.getobj.handle(ma2Name)
  local label = gma.show.getobj.label(handle)
  return label
  ---Например
  ---getLabel('Exec 201')
end

------------    Вывести окно с сообщением
function showBox(title, message)
	gma.gui.msgbox(title, message)
  ---Например
  ---showBox('Title','Message')
end

------------    Вывести окно ошибки в случае отсутсвия чего либо
function check(value)
	if getIndex(value)==nil then	
		gma.gui.msgbox ('Error', value..' - Does not exist!')
		return false		
	end 
  ---Например
  ---check('Seq 1')
end
------------    Очистка какой либо таблицы от всех данных
function clearTable(tableName) 
	for i in pairs (tableName) do
		tableName [i] = nil
	end
end





