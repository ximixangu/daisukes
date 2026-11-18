# Aquest jugador ha canviat quins modificadors poden sortir (menu/back): avis a tothom, un sol cop
tag @s remove daisukes.mods_changed
function daisukes:settings/count_enabled
tellraw @a ["", {"text": "» ", "color": "gold", "bold": true}, {"selector": "@s", "color": "white"}, {"text": " changed the modifiers: ", "color": "gray"}, {"score": {"name": "#enabled", "objective": "daisukes.math"}, "color": "white"}, {"text": " of ", "color": "gray"}, {"score": {"name": "#total", "objective": "daisukes.math"}, "color": "white"}, {"text": " can come up", "color": "gray"}]
execute if score #engine_active daisukes.engine matches 1 run tellraw @a ["", {"text": "   They apply from the next modifier change", "color": "dark_gray"}]
