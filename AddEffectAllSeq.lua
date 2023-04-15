seqs = PromptSequences()
for i,seq in ipairs(seqs) do
    properties = {}
    properties['seq'] = seq

    result = RunCommand('openSequence', properties)
    Log(result['seq'])

    properties2 = {}
    properties2['target'] = 'Star'
    properties2['effect'] = 'On'
    properties2['palette'] = 'C_BUTTON_Palette1=#ECBCB4,C_CHECKBOX_Palette1=1'

    res = RunCommand('addEffect', properties2)
    Log(res['msg'])

    properties3 = {}
    res = RunCommand('saveSequence', properties3)
    Log(res['msg'])
end
