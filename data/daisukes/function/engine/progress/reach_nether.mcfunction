# Pot cridar-se per diversos jugadors al mateix tick: nomes compta el primer
execute if score #nether_reached daisukes.engine matches 1 run return 0
scoreboard players set #nether_reached daisukes.engine 1

tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"selector": "@s", "color": "gold"}, {"text": " has entered the Nether!", "color": "red"}]
