# Fortalesa trobada (avancament daisukes:progress/stronghold, com Eye Spy): fase 5.
# Pot cridar-se per diversos jugadors al mateix tick: nomes compta el primer
execute if score #stronghold_reached daisukes.engine matches 1 run return 0
scoreboard players set #stronghold_reached daisukes.engine 1

tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"selector": "@s", "color": "gold"}, {"text": " found the stronghold!", "color": "gold"}]
