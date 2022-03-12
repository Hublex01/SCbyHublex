---------------------
-----SC_byHublex-----
---------------------
function main()
  --Menu--
  menu = gg.choice(
    {
    statusInfinityFly .. "Infinity Fly",
    statusCharacterGlow .. "Character Glow",
    "Exit"
    }, nil, "SCbyHublex")

  --Exit--
  if menu == 3 then
    Exit()
    
  --Infinity Fly--
  elseif menu == 1 then
    InfinityFly()
    
  --Character Glow--
  elseif menu == 2 then
    CharacterGlow()
  
  
  --No select--
  else
    NoSelect()
  end
  statusMenu = -1
end

-----Infinity Fly-----
function InfinityFly()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.setVisible(false)
  if statusInfinityFly == off then
    gg.searchNumber("0.80",gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("0.95",gg.TYPE_FLOAT)
    statusInfinityFly = on
    gg.toast('Infinity Fly is ON')
  else
    gg.searchNumber("0.95",gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("0.80",gg.TYPE_FLOAT)
    statusInfinityFly = off
    gg.toast('Infinity Fly is OFF')
  end
  gg.clearResults()
end       
--------------------------

-----Character Glow-----
function CharacterGlow()
  gg.setRanges(gg.REGION_VIDEO)
  gg.setVisible(false)
  if statusCharacterGlow == off then
    gg.searchNumber("0.9",gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.getResults(1000)
    gg.editAll("100", gg.TYPE_FLOAT)
    statusCharacterGlow = on
    gg.toast('Glow is ON')
  else
    gg.searchNumber("100",gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.getResults(1000)
    gg.editAll("0.9", gg.TYPE_FLOAT)
    statusCharacterGlow = off
    gg.toast('Glow is OFF')
  end
  gg.clearResults()
end
------------------------

-----NoSelect-----
function NoSelect()
  gg.toast('You not select function')
end
------------------

-----Exit-----
function Exit()
  gg.toast('Thank you for using my script')
  os.exit()
end
--------------

--=====Procedure=====--
on = "[ON]"
off = "[OFF]"

-----Flags-----
statusInfinityFly = off
statusCharacterGlow = off
---------------
while (true) do
  if gg.isVisible(true) then
    statusMenu = 1
    gg.setVisible(false)
  end
  if statusMenu == 1 then
    main()
  end
end
--====================--