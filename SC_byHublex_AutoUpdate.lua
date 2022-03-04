--API = gg.makeRequest('https://pastebin.com/raw/HM4EMcWs').content
gg.toast('Start')
API = gg.makeRequest('https://raw.githubusercontent.com/habib-nematulloev/SC_byHublex/main/SC_byHublex.lua').content
gg.toast('Start 1')
if not API then
  gg.alert('Error')
  gg.toast('Start 2')
else
  gg.toast('Start 3')
  pcall(load(API))
  gg.toast('Start 4')
end
gg.toast('Start 5')
--function loadsource()
--  if not API then
--    gg.toast('failed to load source!')
--  else
--    local vfa, vfb = pcall(load(API))
--    if not vfa then
--      print(vfb)
--    end
--  end
--end
--API = gg.makeRequest('https://raw.githubusercontent.com/habib-nematulloev/SC_byHublex/main/SC_byHublex.lua').content
--loadsource()
