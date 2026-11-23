# Com a jugador que no gira (o va muntat): es mou com sempre. Si girava, fora el fre (release); i un cop per segon es
# treu igualment, per si n'hagues quedat sense l'etiqueta
execute if entity @s[tag=daisukes.tk_turn] run function daisukes:modifiers/tank/release
execute if score #clock daisukes.tk matches 0 run attribute @s minecraft:movement_speed modifier remove daisukes:tank_turn
