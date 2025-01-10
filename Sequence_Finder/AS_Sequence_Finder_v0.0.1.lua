------------------------------------------------
------------ 
------------    Sequence Finder
------------    Версия 0.0.1
------------    Дата обновления 10.01.2025
------------ 
------------------------------------------------
------------    Created by @AlexSaltsev
------------------------------------------------  
------------    If you have any questions contact me at any social:
------------   
------------    https://AlexSaltsev.ru
------------    https://t.me/AlexSaltsev
------------    https://vk.com/AlexSaltsev
------------    https://youtube.com/user/AlexSaltsev
------------   
------------------------------------------------  

local function getLabel (ma2Name)
  local handle = gma.show.getobj.handle(ma2Name)
  local label = gma.show.getobj.label(handle)
  if label==nil then label='LabelErr' end
  return label
end

local function main()
    local seqName = gma.textinput('Sequence Finder by AlexSaltsev', 'Enter text for search')
    local seqStopID=tonumber(gma.textinput('Enter last Seq ID in pool' , '1000'))
    local tableSeq={}
    local ct=1
    local messageLine
    while true do    
        local labelCheck=tostring(getLabel('seq '..ct))
        seqName=string.lower(seqName)
        labelCheck=string.lower(labelCheck)
        if string.find(labelCheck ,seqName) then
            table.insert(tableSeq, 'Seq ID = '..ct..'; Label = '..labelCheck..' \n')
            ct=ct+1
        else ct=ct+1 end           
        if ct == seqStopID then break end    
    end
    if #tableSeq == 0 then table.insert(tableSeq,'Sequence "'..seqName..'" - is not found') end    
    local messageLine = table.concat(tableSeq)
    gma.gui.msgbox ('Sequence Finder by AlexSaltsev', messageLine)
end
return main