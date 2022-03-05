--API = gg.makeRequest('https://pastebin.com/raw/HM4EMcWs').content
API = gg.makeRequest('https://raw.githubusercontent.com/habib-nematulloev/SC_byHublex/0c29028c3657c568c8bac189d81b3ce7a957edac/SC_byHublex.lua').content
if not API then
  gg.toast('oh no')
else
  gg.toast('github loaded')
  pcall(load(API))
end
function loadsource()
  if not API then
    gg.toast('failed to load source!')
  else
    gg.toast('pastebin loaded')
    local vfa, vfb = pcall(load(API))
    if not vfa then
      print(vfb)
    end
  end
end
API = gg.makeRequest('https://raw.githubusercontent.com/habib-nematulloev/SC_byHublex/main/SC_byHublex.lua').content
loadsource()
