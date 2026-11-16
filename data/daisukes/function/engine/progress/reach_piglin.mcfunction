# Primer tracte amb un piglin de la partida (avancament daisukes:progress/piglin_trade: un piglin adult agafa un
# lingot d'or, llancat o donat, com Oh Shiny). Amb la vara de blaze: fase 3.
# Pot cridar-se per diversos jugadors al mateix tick: nomes compta el primer
execute if score #piglin_reached daisukes.engine matches 1 run return 0
scoreboard players set #piglin_reached daisukes.engine 1

tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"selector": "@s", "color": "gold"}, {"text": " bartered with a piglin!", "color": "gold"}]
