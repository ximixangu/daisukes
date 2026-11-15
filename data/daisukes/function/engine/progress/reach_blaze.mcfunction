# Primera vara de blaze de la partida (avancament daisukes:progress/blaze_rod, com Into Fire): fase 3.
# Pot cridar-se per diversos jugadors al mateix tick: nomes compta el primer
execute if score #blaze_reached daisukes.engine matches 1 run return 0
scoreboard players set #blaze_reached daisukes.engine 1
scoreboard players operation #blaze_time daisukes.engine = #elapsed daisukes.engine

tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"selector": "@s", "color": "gold"}, {"text": " got the first blaze rod!", "color": "gold"}]
