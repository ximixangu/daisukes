# Com a mob vigilat. HurtTime es posa a 10 quan rep mal i baixa 1 cada tick: si es mes alt que a l'ultima mirada
# (fa 8 ticks), n'ha rebut (#hurt 1). Els cops de jugador ja l'han deixat a 10 (hit/mark): no es tornen a comptar
execute store result score #ht daisukes.em run data get entity @s HurtTime
execute if score #ht daisukes.em > @s daisukes.em_ht run scoreboard players set #hurt daisukes.em 1
scoreboard players operation @s daisukes.em_ht = #ht daisukes.em
