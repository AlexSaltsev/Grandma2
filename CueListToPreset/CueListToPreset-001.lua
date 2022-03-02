------------------------------------------------
------------ 
------------    CueListToPreset
------------    Version: 0.0.1
------------    Update date: 12.02.2022
------------ 
------------------------------------------------
------------    Created by AlexSaltsev
------------------------------------------------  

function getLabel(ma2Name)
  local handle = gma.show.getobj.handle(ma2Name)
  local label = gma.show.getobj.label(handle)
  return label 
end

function getIndex (ma2Name)
  local handle = gma.show.getobj.handle(ma2Name)
  local index = gma.show.getobj.index(handle)
  return index
end

function check(value)
	if getIndex(value)==nil then	
		gma.gui.msgbox ('Error', value..' - Does not exist!\nPlease restart plugin')
		return false		
	end 
end

function main()
------------    UserInput
	local ExecutorNumber = tonumber(gma.textinput('Enter executor number', '1.201'))  				
	if (check('Executor '..ExecutorNumber)==false)then goto END end 						
	local startCue = tonumber(gma.textinput('Enter number start cue', '1'))  						
	if (check('Executor '..ExecutorNumber..' cue '..startCue)==false)then goto END end 		
	local startLast = tonumber(gma.textinput('Enter number last cue', '3'))  						
	if (check('Executor '..ExecutorNumber..' cue '..startLast)==false)then goto END end 	
	local presetPlace = tonumber(gma.textinput('Enter preset 0.X number', '1')) 			

------------    MainLoop
	gma.cmd('BlindEdit ON')
	for i=startCue, startLast do
		local presetName=getLabel('Executor '..ExecutorNumber..' cue '..i)			
		if presetName==nil then	presetName='Cue '..i end 											
		
		gma.cmd('clearall')
		gma.cmd('call Executor '..ExecutorNumber..' cue '..i)
		gma.cmd('store preset 0.'..presetPlace..' /o')	
		gma.cmd('label preset 0.'..presetPlace..' "'..presetName..'"')
		gma.cmd('clearall')
		presetPlace=presetPlace+1
	end
	gma.gui.msgbox ('All Done','All Done, Have Fun.')
	gma.cmd('BlindEdit OFF')
::END::
end
return main
