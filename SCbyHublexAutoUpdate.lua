--API = gg.makeRequest('https://pastebin.com/raw/HM4EMcWs').content
API = gg.makeRequest('https://raw.githubusercontent.com/habib-nematulloev/SCbyHublex/main/SCbyHublex.lua').content
if not API then
  gg.toast('oh no')
else
  gg.toast('github loaded')
  pcall(load(API))
end
