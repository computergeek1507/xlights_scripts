    properties2 = {}
    properties2['target'] = 'Star/DL Star'
    properties2['effect'] = 'On'
    properties2['palette'] = 'C_BUTTON_Palette1=#0000FF,C_CHECKBOX_Palette1=1'

    res = RunCommand('addEffect', properties2)
    Log(res['msg'])