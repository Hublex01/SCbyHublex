--Script created by Hublex.
--If you can upgrade my script, write me in discord Hublex#2923.
--Repository: https://github.com/Hublex01/SCbyHublex
API = gg.makeRequest('https://raw.githubusercontent.com/Hublex01/SCbyHublex/main/SCbyHublex.lua').content
print(API)
if not API then
  gg.toast('No connection or repository is deleted')
else
  pcall(load(API))
end
