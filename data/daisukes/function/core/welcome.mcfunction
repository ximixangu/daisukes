# Explicacio breu del repte quan encara no ha comencat. La programa core/load (en obrir el mon o amb /reload)
# i surt des de core/tick 2 s despres que hi hagi algu connectat. Si mentrestant s'ha fet start o reset, no surt
execute if score #engine_active daisukes.engine matches 1 run return 0
execute unless score #elapsed daisukes.engine matches ..0 run return 0

tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Daisuke's Challenge", "color": "red", "bold": true}]
tellraw @a ["", {"text": "   Defeat the Ender Dragon while random modifiers keep changing the rules of the game.", "color": "gray"}]
tellraw @a ["", {"text": "   Use ", "color": "gray"}, {"text": "/function daisukes:start", "color": "white", "click_event": {"action": "run_command", "command": "/function daisukes:start"}, "hover_event": {"action": "show_text", "value": "Click to put it in the chat"}}, {"text": " to start the challenge.", "color": "gray"}]
