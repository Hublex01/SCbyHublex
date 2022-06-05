---------------------
-----SC_byHublex-----
---------------------
function main()
  MainMenu()
end

-----Main Menu------
function MainMenu()
  --Menu--
  menu = gg.choice(
    {
      "🌌Gameplay features",
      "☀️Visual features",
      "👺Troll features",
      "Test",
      "❌Exit from script"
    }, nil, "⛅SC by Hublex😎")

  --Exit--
  if menu == 5 then
    Exit()
    
  --Infinity Fly--
  elseif menu == 1 then
    GameplayFeatures()
    
  --Visual features--
  elseif menu == 2 then
    VisualFeatures()
  
  --Troll features--
  elseif menu == 3 then
    TrollFeatures()

  --Troll features--
  elseif menu == 4 then
  gg.toast("rabotay")
  
  --No select--
  else
    NoSelect()
  end
  statusMenu = -1
end
--------------------

-----Gameplay Features-----
function GameplayFeatures()
  --Menu Gameplay Features--
  menuGF = gg.choice(
  {
    "♾️Infinity fly - " .. statusInfinityFly,
    "♾️Infinity slide - " .. statusInfinitySlide,
    "🛫Max level wings - " .. statusMaxWings,
    "🔙Back"
  },nil,"🌌Gameplay features")

  --Back--
  if menuGF == 4 then
    main()

  --Infinity Fly--
  elseif menuGF == 1 then
    InfinityFly()
  
  --Infinity slide--
  elseif menuGF == 2 then
    InfinitySlide()

  --Max wings--
  elseif menuGF == 3 then
    MaxWings()

  --No select--
  else
    NoSelect()
  end
end
--------------------------

-----Visual Features-----
function VisualFeatures()
   --Menu Visual Features--
  menuVF = gg.choice(
    {
      "⚠️🌟Glow everybody",
      "⚠️📀Light rays",
      "🌫️Visual remove clouds - " .. statusVRemoveClouds,
      "🎥FOV Hack - " .. statusFovHack,
      "🦋Big butterflies",
      "🌙Eclipse - " .. statusEclipse,
      "🔙Back"
    },nil,"☀️Visual features")

  --Back--
  if menuVF == 7 then
    main()

  --Glow Everybody--
  elseif menuVF == 1 then
    GlowEverybody()
  
  --Light Rays--
  elseif menuVF == 2 then
    LightRays()
  
  --Visual Remove Clouds--
  elseif menuVF == 3 then
    VRemoveClouds()

  --FOV Hack--
  elseif menuVF == 4 then
    FOVHack()

  --Big butterflies--
  elseif menuVF == 5 then
    BigButterflies()
  
  --Night mode--
  elseif menuVF == 6 then
    Eclipse()

  --No select--
  else
    NoSelect()
  end
end
--------------------------

-----Troll Features-----
function TrollFeatures()
  --Menu Troll Features--
  menuTF = gg.choice(
  {
    "🏊‍♂️Swim on land - " .. statusSwimOnLand,
    "🔙Back"
  },nil,"Troll features")

  --Back--
  if menuTF == 2 then
    main()

  --Swim on land--
  elseif menuTF == 1 then
    SwimOnLand()
 
  --No select--
  else
    NoSelect()
  end
end
--------------------------

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

-----Infinity slide-----
function InfinitySlide()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.setVisible(false)
  if statusInfinitySlide == off then
    gg.searchNumber("0.80",gg.TYPE_FLOAT)
    gg.getResults(100)
    gg.editAll("-0.75",gg.TYPE_FLOAT)
    gg.toast('Infinity slide is activated')
    statusInfinitySlide = on
  else
    gg.searchNumber("-0.75",gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("0.80",gg.TYPE_FLOAT)
    gg.toast('Infinity slide is disable')
    statusInfinitySlide = off
  end
  gg.clearResults()
end       
--------------------------

-----Max wings-----
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('1D;2D;5D;10D;20D;35D;55D;75D;100D;120D;150D;200D;250D;300D;400D::57', gg.TYPE_DWORD)
wnglv = gg.getResults(14)
gg.clearResults()
revertwnglv = {}
for i, v in ipairs(wnglv) do
  revertwnglv[i] = {address = v.address, flags = v.flags, value = v.value}
end
function MaxWings()
  if statusMaxWings == off then
    statusMaxWings = on
      wnglv[1].value = '0'
      wnglv[2].value = '0'
      wnglv[3].value = '0'
      wnglv[4].value = '0'
      wnglv[5].value = '0'
      wnglv[6].value = '0'
      wnglv[7].value = '0'
      wnglv[8].value = '0'
      wnglv[9].value = '0'
      wnglv[10].value = '0'
      wnglv[11].value = '0'
      wnglv[12].value = '0'
      wnglv[13].value = '0'
      wnglv[14].value = '0'
      gg.setValues(wnglv)
      gg.toast('Wing level activated')
  else
    statusMaxWings = off
    gg.setValues(revertwnglv)
    gg.toast('Wing level deactivated')
  end
  gg.clearResults()
end       
--------------------------

-----Glow Everybody-----
function GlowEverybody()
  gg.setRanges(gg.REGION_VIDEO)
  gg.setVisible(false)
  gg.searchNumber("0.9",gg.TYPE_FLOAT)
  gg.setVisible(false)
  gg.getResults(1000)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast('Glow activated(for disable go home)')
  gg.clearResults()
end
------------------------

-----Light rays-----
function LightRays()
  gg.setRanges(gg.REGION_VIDEO)
  gg.setVisible(false)
  gg.searchNumber("100",gg.TYPE_FLOAT)
  gg.setVisible(false)
  gg.getResults(1000)
  gg.editAll("0.9", gg.TYPE_FLOAT)
  gg.toast('Light rays activated(for disable restart the game)')
  gg.clearResults()
end
------------------------

-----Visual Remove Clouds-----
function VRemoveClouds()
  gg.setRanges(gg.REGION_VIDEO)
  gg.setVisible(false)
  if statusVRemoveClouds == off then
    gg.searchNumber("16",gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.getResults(1000)
    gg.editAll("-15", gg.TYPE_FLOAT)
    gg.toast('Visual remove clouds is activated')
    statusVRemoveClouds = on
  else
    gg.searchNumber("-15",gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.getResults(1000)
    gg.editAll("16", gg.TYPE_FLOAT)
    gg.toast('Visual remove clouds is disabled')
    statusVRemoveClouds = off
  end
  gg.clearResults()
end
------------------------

-----FOV Hack-----
function FOVHack()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.setVisible(false)
  if statusFovHack == off then
    gg.searchNumber("0.3",gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.getResults(1000)
    gg.editAll("0.1", gg.TYPE_FLOAT)
    gg.toast('FOV Hack is activated')
    statusFovHack = on
  else
    gg.searchNumber("0.1",gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.getResults(1000)
    gg.editAll("0.3", gg.TYPE_FLOAT)
    gg.toast('FOV Hack is disabled')
    statusFovHack = off
  end
  gg.clearResults()
end
------------------------

-----Big Butterflies-----
function BigButterflies()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.setVisible(false)
  gg.searchNumber("0.12",gg.TYPE_FLOAT)
  gg.getResults(200)
  gg.editAll("1",gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('Big Butterflies is activated(for disable restart the game)')
end
------------------------

-----Eclipse-----
function Eclipse()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setVisible(false)
  if statusEclipse == off then
    gg.searchNumber("0.1",gg.TYPE_FLOAT)
    gg.getResults(500)
    gg.editAll("550",gg.TYPE_FLOAT)
    gg.toast('Eclipse is activated')
    statusEclipse = on
  else
    gg.searchNumber("550",gg.TYPE_FLOAT)
    gg.getResults(500)
    gg.editAll("0.1",gg.TYPE_FLOAT)
    gg.toast('Eclipse is disable')
    statusEclipse = off
  end
  gg.clearResults()
end
------------------------

-----Swim on land-----
function SwimOnLand()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.setVisible(false)
  if statusSwimOnLand == off then
    gg.searchNumber("0.60",gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("-0.1",gg.TYPE_FLOAT)
    gg.toast('Swim on land is activated')
    statusSwimOnLand = on
  else
    gg.searchNumber("-0.1",gg.TYPE_FLOAT)
    gg.getResults(100)
    gg.editAll("0.60",gg.TYPE_FLOAT)
    gg.toast('Swim on land is disable')
    statusSwimOnLand = off
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
on = "🟩"
off = "🟥"

-----Flags-----
statusInfinityFly = off
statusVRemoveClouds = off
statusFovHack = off
statusSwimOnLand = off
statusInfinitySlide = off
statusEclipse = off
statusMaxWings = off
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
