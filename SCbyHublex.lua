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
       "🌌Infinity fly - " .. statusInfinityFly,
      "☀️Visual features",
      "❌Exit from script"
    }, nil, "⛅SC by Hublex😎")

  --Exit--
  if menu == 3 then
    Exit()
    
  --Infinity Fly--
  elseif menu == 1 then
    InfinityFly()
    
  --Visual features--
  elseif menu == 2 then
    VisualFeatures()
  
  
  --No select--
  else
    NoSelect()
  end
  statusMenu = -1
end
--------------------

-----Visual Features-----
function VisualFeatures()
   --Menu Visual Features--
  menuVF = gg.choice(
    {
      "🌟Glow everybody",
      "📀Light rays",
      "🔙Back"
    },nil,"")

  --Back--
  if menuVF == 3 then
    main()

  --Glow Everybody--
  elseif menuVF == 1 then
    GlowEverybody()
  
  --Light Rays--
  elseif menuVF == 2 then
    LightRays()
  
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
  gg.toast('Light rays activated(for disable restart game)')
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