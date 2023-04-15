seqs = PromptSequences()
for i,seq in ipairs(seqs) do
    properties = {}
    properties['seq'] = seq

    result = RunCommand('openSequence', properties)
    Log(result['seq']) 

    properties2 = {}
    properties2['source'] = 'Star'
    properties2['target'] = 'R2D2/Body'

    res = RunCommand('cloneModelEffects', properties)
    Log(res['msg'])

    properties3 = {}
    res = RunCommand('saveSequence', properties3)
    Log(res['msg'])
end