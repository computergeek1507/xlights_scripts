id3 = require("id3")

seq = RunCommand('getOpenSequence', {})

--Log(seq.media)

metadata = id3.readtags(seq.media)
--Log(metadata.title)
--Log(metadata.artist)

--Title
properties = {}
properties['target'] = 'TuneToP5'
properties['effect'] = 'Text'
properties['layer'] = '1'
properties['settings'] = 'B_CUSTOM_SubBuffer=0.00x66.66x100.00x100.00,E_TEXTCTRL_Text='..metadata.title..',E_CHECKBOX_TextToCenter=0,E_CHECKBOX_Text_PixelOffsets=0,E_CHOICE_Text_Count=none,E_CHOICE_Text_Dir=none,E_CHOICE_Text_Effect=normal,E_CHOICE_Text_Font=10-12x12 Bold,E_FONTPICKER_Text_Font=bold calibri 14 windows-1252,E_SLIDER_Text_XEnd=0,E_SLIDER_Text_XStart=0,E_SLIDER_Text_YEnd=0,E_SLIDER_Text_YStart=0'
properties['palette'] = 'C_BUTTON_Palette1=#FF0000,C_CHECKBOX_Palette1=1'

res = RunCommand('addEffect', properties)

--Artist
properties['layer'] = '2'
properties['settings'] = 'B_CUSTOM_SubBuffer=0.00x33.33x100.00x66.66,E_TEXTCTRL_Text=by '..metadata.artist..',E_CHECKBOX_TextToCenter=0,E_CHECKBOX_Text_PixelOffsets=0,E_CHOICE_Text_Count=none,E_CHOICE_Text_Dir=none,E_CHOICE_Text_Effect=normal,E_CHOICE_Text_Font=10-12x12 Thin,E_FONTPICKER_Text_Font=bold calibri 11 windows-1252,E_SLIDER_Text_XEnd=0,E_SLIDER_Text_XStart=0,E_SLIDER_Text_YEnd=0,E_SLIDER_Text_YStart=0'

res = RunCommand('addEffect', properties)

--ToTune
properties['layer'] = '3'
properties['palette'] = 'C_BUTTON_Palette1=#0000FF,C_CHECKBOX_Palette1=1'
properties['settings'] = 'B_CUSTOM_SubBuffer=00.64x-1.00x100.00x36.45,E_TEXTCTRL_Text=Tune To,E_CHECKBOX_TextToCenter=0,E_CHECKBOX_Text_PixelOffsets=0,E_CHOICE_Text_Count=none,E_CHOICE_Text_Dir=none,E_CHOICE_Text_Effect=normal,E_CHOICE_Text_Font=10-12x12 Thin,E_FONTPICKER_Text_Font=bold calibri 11 windows-1252,E_SLIDER_Text_XEnd=0,E_SLIDER_Text_XStart=-29,E_SLIDER_Text_YEnd=0,E_SLIDER_Text_YStart=0'

res = RunCommand('addEffect', properties)

--94.1FM
properties['layer'] = '4'
properties['palette'] = 'C_BUTTON_Palette1=#FF00FF,C_CHECKBOX_Palette1=1'
properties['settings'] = 'B_CUSTOM_SubBuffer=0.98x-9.00x101.00x43.98,E_TEXTCTRL_Text=94.1FM,E_CHECKBOX_TextToCenter=0,E_CHECKBOX_Text_PixelOffsets=0,E_CHOICE_Text_Count=none,E_CHOICE_Text_Dir=none,E_CHOICE_Text_Effect=normal,E_CHOICE_Text_Font=12-15x15 Bold,E_FONTPICKER_Text_Font=bold calibri 11 windows-1252,E_SLIDER_Text_XEnd=0,E_SLIDER_Text_XStart=22,E_SLIDER_Text_YEnd=0,E_SLIDER_Text_YStart=0'

res = RunCommand('addEffect', properties)

properties['layer'] = '0'
properties['effect'] = 'Marquee'
properties['palette'] = 'C_BUTTON_Palette1=#FFFFFF,C_CHECKBOX_Palette1=1,C_BUTTON_Palette2=#FF0000,C_CHECKBOX_Palette2=1'
properties['settings'] = 'E_CHECKBOX_Marquee_PixelOffsets=0,E_CHECKBOX_Marquee_Reverse=0,E_CHECKBOX_Marquee_WrapX=0,E_CHECKBOX_Marquee_WrapY=0,E_NOTEBOOK_Marquee=Settings,E_SLIDER_MarqueeXC=0,E_SLIDER_MarqueeYC=0,E_SLIDER_Marquee_Band_Size=3,E_SLIDER_Marquee_ScaleX=100,E_SLIDER_Marquee_ScaleY=100,E_SLIDER_Marquee_Skip_Size=0,E_SLIDER_Marquee_Speed=1,E_SLIDER_Marquee_Stagger=0,E_SLIDER_Marquee_Start=0,E_SLIDER_Marquee_Thickness=1'
--
res = RunCommand('addEffect', properties)