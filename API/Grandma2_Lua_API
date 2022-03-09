------------------------------------------------
------------ 
------------    Grandma2 Lua API (Russian)
------------    Version: 0.0.1
------------    Update date: 09.03.2022
------------ 
------------------------------------------------
------------    Created by AlexSaltsev.ru
------------ 	  https://github.com/AlexSaltsev
------------------------------------------------  
------------ 
------------    Неофициальное API Lua команд для Grandma2 с примерами использования
------------	  
------------------------------------------------

------------------------------------------------
------------	 gma.
------------------------------------------------

---Функция выводит данные на System Monitoring.
gma.echo(var)
[[--
-- любой тип данных: var (number, string, bool, float, etc...)
-- result: nil - ничего не возвращает.
--
-- Пример использования

gma.echo('Hello World')

-- SM Feedback: "'Hello World"
--]]

---Функция выводит данные на Command Line Feedback.
gma.feedback(var)
[[--
-- любой тип данных: var (number, string, bool, float, etc...)
-- result: nil - ничего не возвращает.
--
-- Пример использования

gma.feedback('Hello World')

-- CMD Feedback: "Hello World"
--]]

---Функция запускает выполнение синтаксиса в Command Line Grandma2.
gma.cmd(command)
[[--
-- string: command -  команда выполнения согласно синтаксису ma2
-- result: nil - ничего не возвращает.
--
-- Пример использования

gma.cmd('ClearAll; Channel 1 thru ; at 100')

--]]

---	Функция открывает всплывающее окно с user input
gma.textinput(title,message)
[[--
-- string: title - отвечает за заголовок окна. 
-- string: message - отвечает за содержание окна.
-- result: string - возвращает значение введеные пользователем
--
--	Пример использования

	local input=gma.textinput('Hello','Hello Username') -- создаем переменную input и присваиваем ей значение которое введет пользователь
	gma.feedback(input) -- выводим в Command Line Feedback переменную input
	
---
	
	local input=gma.textinput('Hello','yes or no?') -- создаем переменную input и присваиваем ей значение которое введет пользователь
	if input=='yes' then 
		gma.feedback('ok') --Если пользователь ввел сообщение 'yes', то выводим в Command Line Feedback сообщение 'ok'
		elseif input=='no'  then
		gma.feedback('not ok') --Если пользователь ввел сообщение 'no', то выводим в Command Line Feedback сообщение 'not ok'
		else 
		gma.feedback('Wrong input') --Если пользователь ввел другое сообщение или закрыл окно, то выводим в Command Line Feedback сообщение 'Wrong input'
	end
	
--
--]]

---Функция приостанавливает выполнение скрипта LUA на несколько секунд
gma.sleep(sleep_seconds)
[[--
-- number: sleep_seconds -  количество секунд
-- result: nil - ничего не возвращает.
--
--	Пример использования

gma.sleep(5);

--]]

---Функция возвращает данные о дате создания била ПО Grandma2.
gma.build_date()
[[--
-- result: string - возвращает данные в формате string
--
--	Пример использования

gma.feedback(gma.build_date())

--]]

---Функция возвращает время сборки текущего ПО Grandma2.
gma.build_time()
[[--
-- result: string - возвращает данные в формате string
--
--	Пример использования

gma.feedback(gma.build_time())

--]]

---Функция возвращает HASH информациию текущего ПО Grandma2.
gma.git_version()
[[--
-- result: string - возвращает данные в формате string
--
--	Пример использования

gma.feedback(gma.git_version())

--]]

---Функция возвращает данные о типе ПО Grandma.
gma.gethardwaretype()
[[--
-- result: string - возвращает данные в формате string
--
--	Пример использования

gma.feedback(gma.gethardwaretype())

--]]

---Функция экспортирует данные таблицы в файл формата XML
gma.export(filename,table_data)
[[--
-- Место сохранения по умолчанию - C:\ProgramData\MA Lighting Technologies\grandma\...\temp
---
-- string: filename - название файла
-- table: table_data - таблица с данными
-- result: empty - ничего не возвращает
--
--	Пример использования

local filename = 'testName.xml' -- название файла.
local table_data ={1,2,3,4,5}	--	таблица с данными
gma.export(filename,table_data) 

--]]

---Функция экспортирует данные таблицы в файл CSV
gma.export_csv(filename,table_data)
[[--
-- Место сохранения по умолчанию - C:\ProgramData\MA Lighting Technologies\grandma\...\temp
---
-- string: filename - название файла
-- table: table_data - таблица с данными
-- result: empty - ничего не возвращает
--
--	Пример использования

local filename = 'testName.csv' -- название файла.
local table_data ={1,2,3,4,5}	--	таблица с данными
gma.export(filename,table_data) 

--]]

---Функция экспортирует данные таблицы в файл Json
gma.export_json(filename,table_data)
[[--
-- Место сохранения по умолчанию - C:\ProgramData\MA Lighting Technologies\grandma\...\temp
---
-- string: filename - название файла
-- table: table_data - таблица с данными
-- result: empty - ничего не возвращает
--
--	Пример использования

local filename = 'testName.json' -- название файла.
local table_data ={1,2,3,4,5}	--	таблица с данными
gma.export(filename,table_data) 
--]]

---Функция импортирует таблицу из файла 
gma.import(filename)
[[--
-- string: filename - название файла
-- result: empty - ничего не возвращает
--
--	Пример использования
---
local filename = 'testName.json' -- название файла.
local import_table=gma.import(filename) -- импорт данных из файла в переменную import_table
local feedback=table.concat(import_table, ' ') -- подготовка к выводу в консоль
gma.feedback(feedback) -- вывод в консоль
--]]

---Функция запускает другую функцию несколько раз через некоторое время
gma.timer(function_one,step_delay,max_count,function_two)
[[--
-- function: function_one - имя основной функции.
-- number: step_delay - шаг отсрочки в секундах
-- number: max_count - количество повторов
-- function: function_two - имя функции которая выполняется после всех повторов.
-- result: empty - ничего не возвращает
--
--	Пример использования
---
function function_one(number1, number2)
	gma.feedback('function 1 run')
	gma.feedback('Time in sec = '..number1..' Step is '..number2)
end

function function_two()
gma.feedback('function 2 is here')
end

function main()

local step_delay=1
local max_count=10
gma.timer(function_one,step_delay,max_count,function_two)
	
end
return main
--]]

---Функция запрашивает системное время в секундах
gma.gettime()
[[--
-- result: string - возвращает данные текущего времени в секундах
--
--	Пример использования
gma.feedback(gma.gettime())
--]]

------------------------------------------------
------------	gma.canbus
------------------------------------------------


------------------------------------------------
------------	gma.gui
------------------------------------------------

---Функция открывает всплывающее окно с подтверждением
gma.gui.confirm(title,message)
[[--
-- string: title - отвечает за заголовок окна. 
-- string: message - отвечает за содержание окна.
-- result: boolean - возвращает значение true\false 
--
-- Пример использования

	if (gma.gui.confirm('Hello','This is the message inside the block'))==true then 
		gma.feedback('ok') --Если пользователь нажал OK, то выводим в Command Line Feedback сообщение 'ok'
		else	
		gma.feedback('not ok') --Если пользователь нажал CANCEL или закрыл окно, то выводим в Command Line Feedback сообщение 'not ok'
	end
	
--]]

---	Функция открывает всплывающее окно с уведомлением
gma.gui.msgbox(title,message) 
[[--
-- string: title - отвечает за заголовок окна. 
-- string: message - отвечает за содержание окна.
-- result: nil - ничего не возвращает.
--
-- Пример использования

gma.gui.msgbox('Hello','This is the message inside the block')

--]]

------------------------------------------------
------------	gma.gui.progress
------------------------------------------------

------------------------------------------------
------------	gma.network
------------------------------------------------

--- Функция позволяет получить информацию о типе MA-NET устройства
gma.network.gethosttype()
[[--
--	result: string 
--
--	Пример использования

local gethosttype = gma.network.gethosttype() 
gma.feedback(gethosttype) -- выводим информацию в Command Line Feedback

-- CMD Feedback: "Console"
--
--]]

--- Функция позволяет получить информацию о саб-типе MA-NET устройства
gma.network.gethostsubtype()
[[--
--	result: string 
--
--	Пример использования

local gethostsubtype = gma.network.gethostsubtype()
gma.feedback(gethostsubtype) -- выводим информацию в Command Line Feedback

-- CMD Feedback: "onPC"
--
--]]


--- Функция позволяет получить первичный primary/MA-NET IP адрес
gma.network.getprimaryip()
[[--
--	result: string 
--
--	Пример использования

local getprimaryip = gma.network.getprimaryip()
gma.feedback(getprimaryip) -- выводим информацию в Command Line Feedback

-- CMD Feedback: "127.0.0.1"
--
--]]


--- Функция позволяет получить вторичный  secondary/ARTNET  IP адрес
gma.network.getsecondaryip()
[[--
--	result: string 
--
--	Пример использования

local getsecondaryip = gma.network.getsecondaryip()
gma.feedback(getsecondaryip) -- выводим информацию в Command Line Feedback

-- CMD Feedback: "0.0.0.0"
--
--]]


--- Функция позволяет получить статус MA-NET сессии
gma.network.getstatus()
[[--
--	result: string ("Standalone", "Master"...)
--
--	Пример использования

local getstatus = gma.network.getstatus()
gma.feedback(getstatus) -- выводим информацию в Command Line Feedback

-- CMD Feedback: "Master"
--
--]]


--- Функция позволяет получить номер MA-NET сессии
gma.network.getsessionnumber()
[[--
--	result: number (Возвращает 255 если вы вне сессии)
--
--	Пример использования

local getsessionnumber = gma.network.getsessionnumber()
gma.feedback(getsessionnumber) -- выводим информацию в Command Line Feedback

-- CMD Feedback: "1"
--
--]]


--- Функция позволяет получить название MA-NET сессии
gma.network.getsessionname()
[[--
--	result: number (Возвращает 255 если вы вне сессии)
--
--	Пример использования

local getsessionname = gma.network.getsessionname()
gma.feedback(getsessionname) -- выводим информацию в Command Line Feedback

-- CMD Feedback: "newshow"
--
--]]

--- Функция позволяет получить номер слота MA-NET сессии
gma.network.getslot()
[[--
--	result: number (Возвращает 30 если вы в сессии, 255 если нет)
--
--	Пример использования

local getslot = gma.network.getslot()
gma.feedback(getslot) -- выводим информацию в Command Line Feedback

-- CMD Feedback: "30"
--
--]]


---???
gma.network.gethostdata(ip,recycle)
[[--
-- string:	ip
-- number:	recycle
-- result: ???
--
--	Пример использования

local ip='127.0.0.1'
local recycle = 1
local getslot = gma.network.gethostdata(ip,recycle)
gma.feedback(gethostdata) -- выводим информацию в Command Line Feedback

-- CMD Feedback: "30"
--
--]]

---???
gma.network.getmanetslot(slot,recycle)
[[--
-- number:	slot
-- table??? :	recycle
-- result: table??? 
--
--	Пример использования



-- CMD Feedback: ???
--
--]]

---???
gma.network.getperformance(slot,recycle)
[[--
-- number:	slot
-- table??? :	recycle
-- result: table??? 
--
--	Пример использования



-- CMD Feedback: ???
--
--]]

------------------------------------------------
------------	gma.show
------------------------------------------------

---получить значение с DMX адреса
gma.show.getdmx(dmx_addr)
[[--
--	number: dmx_addr
--	result: number 
--
--	Пример использования

local dmx_addr=1
local getdmx = gma.show.getdmx(dmx_addr)
gma.feedback(getdmx) -- выводим информацию в Command Line Feedback

-- CMD Feedback: "0.0"
--
--]]

---получить значение с нескольких DMX адресов???
gma.show.getdmx(recycle,dmx_addr,amount)
[[--
--	table: recycle
--	number: dmx_addr
--	number: amount
--	result: table??? 
--
--	Пример использования

local recycle = ???
local dmx_addr=1
local amount=1
local getdmx = gma.show.getdmx(recycle,dmx_addr,amount)
gma.feedback(getdmx) -- выводим информацию в Command Line Feedback

-- CMD Feedback: ???
--
--]]

---получить значение стандартных переменных GMA2
gma.show.getvar(varname)
[[--
--	string: varname
--	result: any type of. 
--
--	Пример использования

local varname='HOSTSUBTYPE'
local getvar = gma.show.getvar(varname)
gma.feedback(getvar) -- выводим информацию в Command Line Feedback

-- CMD Feedback: "OnPC"
--
--	СТАНДАРТНЫЕ ПЕРЕМЕННЫЕ:
--
--  HOSTSUBTYPE = Type of device you are on.  (ie: "OnPC")
--  HOSTTYPE = Type of device.  (ie: "Console")
--  TIME = Current time of day ("00h00m00.000s")
--  DATE = Current date ("1.1.2000")
--  PRESET = ??? ("NONE")
--  USER = Currently logged in user (ie: "administrator")
--  HOSTNAME = Current hostname (ie: "MY-COMPUTER")
--  USERPROFILE = Current user profile (ie: "Default")
--  USERRIGHTS = Current user rights level (ie: "Admin")
--  ATTRIBUTE = ??? ("NONE")
--  OS = OS you are running (ie: "WINDOWS")
--  HOSTSTATUS = MA-NET Session status (ie: "Standalone")
--  HOSTIP = MA-NET IP address (ie: "192.168.0.1")
--  PATH = Run path of the GrandMA software
--  PLUGINPATH = Run path of LUA plugins
--  VERSION = grandMA2 software version (ie: "3.1.2.5")
--  SELECTEDEXEC = Selected Executer (ie: "1.1.1", "?.Page.Executer")
--  FEATURE = ??? (ie: "NONE")
--  FADERPAGE = Current fader page (ie: "1")
--  BUTTONPAGE = Current button page (ie: "1")
--  CHANNELPAGE = Current channel page (ie: "1")
--  SELECTEDEXECCUE = ??? (ie: "NONE")
--  SELECTEDFIXTURESCOUNT = Number of fixtures selected (ie: "16")
--]]


---Задать переменную GMA2 (аналог SetVar $test_varname = "text")
gma.show.setvar(varname,value)
[[--
--	string: name
--	any type of: value
--	result: nil 
--
--	Пример использования

local varname='test_varname'
local value='text'
gma.show.setvar(varname,value)
gma.cmd('listvar')
--
--]]


------------------------------------------------
------------	gma.show.getobj
------------------------------------------------

--- Функция позволяет получить handle ID объекта
gma.show.getobj.handle(name)
[[--
--	string: name - имя объекта обращения 
--	result: number - уникальный handle ID объекта
--
--	Пример использования

local handle = gma.show.getobj.handle('Group 1') -- объявляем переменную handle, присваиваем ей значение handle ID объекта 'Group 1'
gma.feedback(class) -- выводим информацию в Command Line Feedback

--
--]]

--- Функция позволяет получить информацию типа CLASS объекта handle.
gma.show.getobj.class(handle)
[[--
--	function: handle - result функции gma.show.getobj.handle(name)
--	result: string - возвращяет строку с данными о классе объекта
--
--	Пример использования

local handle = gma.show.getobj.handle('Group 1') -- объявляем переменную handle, присваиваем ей значение handle ID объекта 'Group 1'
local class = gma.show.getobj.class(handle) -- объявляем переменную class, присваиваем ей значение CLASS переменной handle
gma.feedback(class) -- выводим информацию о классе объекта в Command Line Feedback

--
--]]

--- Функция позволяет получить информацию типа INDEX объекта handle.
gma.show.getobj.index(handle)
[[--
--	function: handle - result функции gma.show.getobj.handle(name)
--	result: number - возвращяет число c индеком объекта. (Индекс равен номеру объекта -1, Index Group 1 = 0, Index Group 2 = 1 и тд)
--
--	Пример использования

local handle = gma.show.getobj.handle('Group 1') -- объявляем переменную handle, присваиваем ей значение handle ID объекта 'Group 1'
local index = gma.show.getobj.index(handle) -- объявляем переменную index, присваиваем ей значение INDEX переменной handle
gma.feedback(index) -- выводим информацию INDEX в Command Line Feedback

--
--]]

--- Функция позволяет получить информацию типа NUMBER объекта handle.
gma.show.getobj.number(handle)
[[--
--	function: handle - result функции gma.show.getobj.handle(name)
--	result: number - возвращяет число c номером объекта.
--
--	Пример использования

local handle = gma.show.getobj.handle('Group 1') -- объявляем переменную handle, присваиваем ей значение handle ID объекта 'Group 1'
local number = gma.show.getobj.number(handle) -- объявляем переменную number, присваиваем ей значение NUMBER переменной handle
gma.feedback(number) -- выводим информацию NUMBER в Command Line Feedback

--
--]]

--- Функция позволяет получить информацию типа NAME объекта handle.
gma.show.getobj.name(handle)
[[--
--	function: handle - result функции gma.show.getobj.handle(name)
--	result: string - возвращяет строку с данными о имени объекта
--
--	Пример использования

local handle = gma.show.getobj.handle('Group 1') -- объявляем переменную handle, присваиваем ей значение handle ID объекта 'Group 1'
local name = gma.show.getobj.name(handle) -- объявляем переменную name, присваиваем ей значение NAME переменной handle
gma.feedback(name) -- выводим информацию NAME в Command Line Feedback

--
--]]

--- Функция позволяет получить информацию типа LABEL объекта handle.
gma.show.getobj.label(handle)
[[--
--	function: handle - result функции gma.show.getobj.handle(name)
--	result: string - возвращяет строку с данными о label объекта
--
--	Пример использования

local handle = gma.show.getobj.handle('Group 1') -- объявляем переменную handle, присваиваем ей значение handle ID объекта 'Group 1'
local label = gma.show.getobj.label(handle) -- объявляем переменную label, присваиваем ей значение LABEL переменной handle
gma.feedback(name) -- выводим информацию LABEL в Command Line Feedback

--
--]]

--- Функция позволяет получить информацию о количестве дочерних элементов объекта handle.
gma.show.getobj.amount(handle)
[[--
--	function: handle - result функции gma.show.getobj.handle(name)
--	result: number - возвращяет строку с количеством дочерних элементов объекта
--
--	Пример использования

local handle = gma.show.getobj.handle('Seq 1') -- объявляем переменную handle, присваиваем ей значение handle ID объекта 'Seq 1'
local amount = gma.show.getobj.amount(handle) -- объявляем переменную amount, присваиваем ей значение о количестве дочерних элементов объекта handle.
gma.feedback(amount) -- выводим информацию Command Line Feedback

--
--]]

--- Функция позволяет получить handle ID дочернего объекта
gma.show.getobj.child(handle, index)
[[--
--	function: handle - result функции gma.show.getobj.handle(name)
--	number: index - номер дочернего элемента
--	result: number - возвращяет строку с количеством дочерних элементов объекта
--
--	Пример использования

local handle = gma.show.getobj.handle('Seq 1') -- объявляем переменную handle, присваиваем ей значение handle ID объекта 'Seq 1'
local index = 1 -- Номер дочернего объекта
local child = gma.show.getobj.child(handle, index) -- объявляем переменную child, присваиваем ей значение о количестве дочерних элементов объекта handle.
gma.feedback(child) -- выводим информацию Command Line Feedback

--
--]]


--- Функция позволяет получить handle ID родительского объекта от дочернего объекта
gma.show.getobj.parent(handle)
[[--
--	function: handle - result функции gma.show.getobj.handle(name)
--	result: number - возвращяет строку с количеством дочерних элементов объекта
--
--	Пример использования

local handle = gma.show.getobj.handle('Seq 1 Cue 1') -- объявляем переменную handle, присваиваем ей значение handle ID объекта 'Seq 1 Cue 1'
local parent = gma.show.getobj.parent(handle) -- объявляем переменную parent, присваиваем ей значение handle ID родительского объекта
gma.feedback(parent) -- выводим информацию Command Line Feedback

--
--]]


--- Функция проверяет наличее объекта handle
gma.show.getobj.verify(handle)
[[--
--	function: handle - result функции gma.show.getobj.handle(name)
--	result: bool - возвращяет данные true\false
--
--	Пример использования

local handle = gma.show.getobj.handle('Seq 1 Cue 1') -- объявляем переменную handle, присваиваем ей значение handle ID объекта 'Seq 1 Cue 1'
local verify = gma.show.getobj.verify(handle) -- объявляем переменную parent, присваиваем ей значение handle ID родительского объекта
gma.feedback(verify) -- выводим информацию Command Line Feedback

--
--]]

--- Функция сравнивает 2 объекта handle
gma.show.getobj.compare(handle1,handle2)
[[--
--	function: handle1 - result функции gma.show.getobj.handle(name)
--	function: handle2 - result функции gma.show.getobj.handle(name)
--	result: bool - возвращяет true\false. True если handle1 = handle2, False если handle1 ~= handle2.
--
--	Пример использования

local handle1 = gma.show.getobj.handle('Seq 1') -- объявляем переменную handle, присваиваем ей значение handle ID объекта 'Seq 1 Cue 1'
local handle2 = gma.show.getobj.handle('Seq 2') -- объявляем переменную handle, присваиваем ей значение handle ID объекта 'Seq 2 Cue 1'
if gma.show.getobj.compare(handle1, handle2) then 
gma.feedback('true') 
else 
gma.feedback('false') 
end

--
--]]

------------------------------------------------
------------	Функции gma.show.property
------------------------------------------------

--- Функция позволяет получить число с количеством свойств, связанных с этим объектом handle
gma.show.property.amount(handle)
[[--
--	function: handle - result функции gma.show.getobj.handle(name)
--	result: number - возвращает число с количеством свойств, связанных с этим объектом handle
--
--	Пример использования

local handle = gma.show.getobj.handle('Group 1') -- объявляем переменную handle, присваиваем ей значение handle ID объекта 'Group 1'
local amount = gma.show.property.amount(handle) -- объявляем переменную amount, присваиваем ей число с количеством свойств объекта handle
gma.feedback(amount) -- выводим информацию в Command Line Feedback

--
--]]

--- Функция позволяет получить имя свойства по индексу
gma.show.property.name(handle,index)
[[--
--	function: handle - result функции gma.show.getobj.handle(name)
--	number:	index - номер свойства объекта. (Индекс равен номеру -1, Index 1 = 0, Index 2 = 1 и тд)
--	result: string - возвращает строку с названием свойства
--
--	Пример использования

local handle = gma.show.getobj.handle('Group 1') -- объявляем переменную handle, присваиваем ей значение handle ID объекта 'Group 1'
local index = 1
local name = gma.show.property.name(handle,index) -- объявляем переменную amount, присваиваем ей число с количеством свойств объекта handle
gma.feedback(name) -- выводим информацию в Command Line Feedback

--
--]]

---Возвращает свойство объекта по заданному индексу (по идентификатору) для указанного дескриптора
gma.show.property.get(handle,index)
[[--
--	function: handle - result функции gma.show.getobj.handle(name)
--	number:	index - номер свойства объекта. (Индекс равен номеру -1, Index 1 = 0, Index 2 = 1 и тд)
--	result: string - возвращает строку с названием свойства
--
--	Пример использования

local handle = gma.show.getobj.handle('Group 1') -- объявляем переменную handle, присваиваем ей значение handle ID объекта 'Group 1'
local index = 1
local get = gma.show.property.get(handle,index) -- объявляем переменную amount, присваиваем ей число с количеством свойств объекта handle
gma.feedback(get) -- выводим информацию в Command Line Feedback

--
--]]

---Возвращает свойство объекта по заданному индексу (по имени) для указанного дескриптора
gma.show.property.get(handle,property_name)
[[--
--	function: handle - result функции gma.show.getobj.handle(name)
--	string: property_name - номер свойства объекта. (Индекс равен номеру -1, Index 1 = 0, Index 2 = 1 и тд)
--	result: string - возвращает строку с названием свойства
--
--	Пример использования

local handle = gma.show.getobj.handle('Group 1') -- объявляем переменную handle, присваиваем ей значение handle ID объекта 'Group 1'
local index = 1
local get = gma.show.property.get(handle,index) -- объявляем переменную amount, присваиваем ей число с количеством свойств объекта handle
gma.feedback(get) -- выводим информацию в Command Line Feedback

--
--]]

---Устанавливает свойство объекта по заданному индексу (по идентификатору) для указанного дескриптора
gma.show.property.set(handle,index,value)
[[--
--	function: handle - result функции gma.show.getobj.handle(name)
--	number: index - номер свойства объекта. (Индекс равен номеру -1, Index 1 = 0, Index 2 = 1 и тд)
--	string: value - 
--	result: bool 
--
--	Пример использования

local handle = gma.show.getobj.handle('Group 1') -- объявляем переменную handle, присваиваем ей значение handle ID объекта 'Group 1'
local index = 1
local value=100
local set = gma.show.property.set(handle,index,value) -- объявляем переменную amount, присваиваем ей число с количеством свойств объекта handle
gma.feedback(get) -- выводим информацию в Command Line Feedback

--
--]]

--- Устанавливает свойство объекта по заданному индексу (по имени) для указанного дескриптора
gma.show.property.set(handle,property_name,value)
[[--
--	function: handle - result функции gma.show.getobj.handle(name)
--	string: property_name - 
--	string: value - 
--	result: bool 
--
--	Пример использования

local handle = gma.show.getobj.handle('Group 1') -- объявляем переменную handle, присваиваем ей значение handle ID объекта 'Group 1'
local property_name = 1
local value=100
local set = gma.show.property.set(handle,index,value) -- объявляем переменную amount, присваиваем ей число с количеством свойств объекта handle
gma.feedback(get) -- выводим информацию в Command Line Feedback

--
--]]

------------------------------------------------
------------	gma.timestamp
------------------------------------------------
------------	Недокументированные функции отметки времени
------------	Вероятно, они были спрятаны по какой-то причине. Они могут быть нестабильными и иметь побочные эффекты.
------------	Не рекомендуется использовать их в шоу. Если у вас есть время исследуйте их на ПК.
------------------------------------------------


------------------------------------------------
------------	gma.user
------------------------------------------------

---Вывести в CMD Feedback  значение UserVar конкретной переменной
gma.user.getvar(varname)
[[--
--	string: varname
--	result: any type of 
--
--	Пример использования


--
--]]

---Задать переменную GMA2 (аналог SetUserVar $test_varname = "text")
gma.user.setvar(varname,value)
[[--
--	string: name
--	any type of: value
--	result: nil 
--
--	Пример использования

local varname='test_varname'
local value='text'
gma.user.setvar(varname,value)
gma.cmd('listvar')
--
--]]

---??? Получить номер директории в которой находится CMD???
gma.user.getcmddest()
[[--
--	
--	result: number
--
--	Пример использования

gma.cmd('CD EditSetup')
local getcmddest = gma.user.getcmddest()
gma.feedback(getcmddest)
gma.cmd('CD /')

--
--]]

---??? Получить номер выбранного exec???
gma.user.getselectedexec()
[[--
--	
--	result: number
--
--	Пример использования


local getselectedexec = gma.user.getselectedexec()
gma.feedback(getselectedexec)


--
--]]


