# Explicacio breu del repte quan encara no ha comencat, amb l'enllac al menu. La programa core/load (en obrir el mon,
# amb /reload o amb una partida nova) i surt des de core/tick 2 s despres que hi hagi algu connectat.
# Si mentrestant ja ha comencat, no surt
execute if score #engine_active daisukes.engine matches 1 run return 0
execute unless score #elapsed daisukes.engine matches ..0 run return 0

tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Daisuke's Challenge", "color": "red", "bold": true}]
tellraw @a ["", {"text": "   Defeat the Ender Dragon while random modifiers keep changing the rules of the game.", "color": "gray"}]
tellraw @a ["", {"text": "   ", "color": "gray"}, {"text": "[Open the menu]", "color": "gold", "click_event": {"action": "show_dialog", "dialog": "daisukes:menu"}, "hover_event": {"action": "show_text", "value": "Settings, modifiers and Start"}}, {"text": " to choose the settings and start. Nobody can move until then. The menu is also in the pause menu and on the ", "color": "gray"}, {"keybind": "key.quickActions", "color": "white"}, {"text": " key.", "color": "gray"}]
