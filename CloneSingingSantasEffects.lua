properties = {}

subModels = {'Hat Red', 'Hat Ball White', 'Hat Trim White', 'Eye Open Left', 'Eye Open Right', 'Eye Closed Left', 'Eye Closed Right', 'Nose', 'Beard'}
for i, subModel in ipairs(subModels) do
  print (subModel)
  properties['source'] = 'Singer 1 Santa 1/' .. subModel
  
  properties['target'] = 'Singer 1 Santa 2/' .. subModel
  
  res = RunCommand('cloneModelEffects', properties)
  properties['target'] = 'Singer 1 Santa 3/' .. subModel
  
  res = RunCommand('cloneModelEffects', properties)
  properties['target'] = 'Singer 1 Santa 4/' .. subModel
  
  res = RunCommand('cloneModelEffects', properties)
  properties['target'] = 'Singer 1 Santa 5/' .. subModel
  
  res = RunCommand('cloneModelEffects', properties)
end


