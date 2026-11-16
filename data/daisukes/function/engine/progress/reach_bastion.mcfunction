# Primer bastio de la partida (avancament daisukes:progress/bastion, com Those Were the Days). Amb la vara de
# blaze: fase 3. Pot cridar-se per diversos jugadors al mateix tick: nomes compta el primer
execute if score #bastion_reached daisukes.engine matches 1 run return 0
scoreboard players set #bastion_reached daisukes.engine 1

tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"selector": "@s", "color": "gold"}, {"text": " found a bastion!", "color": "gold"}]
