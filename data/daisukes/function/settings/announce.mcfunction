# Avis a tothom quan algu canvia la configuracio des del menu (menu/settings/changed), amb el resum (settings/summary).
# daisukes:menu action diu que ha fet (" changed the settings: ", " chose the Hard settings: "...)
tellraw @a ["", {"text": "» ", "color": "gold", "bold": true}, {"selector": "@s", "color": "white"}, {"nbt": "action", "storage": "daisukes:menu", "color": "gray"}, {"nbt": "summary", "storage": "daisukes:menu", "interpret": true}]
execute if score #engine_active daisukes.engine matches 1 run tellraw @a ["", {"text": "   They apply from the next modifier change", "color": "dark_gray"}]
