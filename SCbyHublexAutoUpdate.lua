--API = gg.makeRequest('https://pastebin.com/raw/HM4EMcWs').content
API = gg.makeRequest('https://raw.githubusercontent.com/Hublex01/SCbyHublex/main/SCbyHublex.lua').content
print(API)
if not API then
  gg.toast('oh no')
else
  gg.toast('github loaded')
  pcall(load(API))
end
