API = gg.makeRequest('https://raw.githubusercontent.com/habib-nematulloev/SC_byHublex/main/SC_byHublex.lua').content
if not API then
  gg.alert('Error')
else
  pcall(load(API))
end
