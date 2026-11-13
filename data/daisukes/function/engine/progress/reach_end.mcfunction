# Pot cridar-se per diversos jugadors al mateix tick: nomes compta el primer
execute if score #end_reached daisukes.engine matches 1 run return 0
scoreboard players set #end_reached daisukes.engine 1

tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"selector": "@s", "color": "gold"}, {"text": " has entered the End!", "color": "light_purple"}]
execute if score #change_seconds_end daisukes.config matches 1.. run tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Modifiers now change every ", "color": "gray"}, {"score": {"name": "#change_seconds_end", "objective": "daisukes.config"}, "color": "gold", "bold": true}, {"text": " s", "color": "gray"}]
