# Com a jugador que acaba de premer Shift, als seus peus: planta una mina al centre del bloc (mine/place), si es a
# terra, no va muntat (Shift el fa baixar) i no te ja #max_mines (les que estan a punt d'esclatar no compten)
execute if predicate daisukes:tank/riding run return 0
execute unless predicate daisukes:on_ground run return 0
scoreboard players operation #me daisukes.tk = @s daisukes.tk_id
execute store result score #n daisukes.tk if entity @e[type=minecraft:block_display,tag=daisukes.tk_mine,tag=!daisukes.tk_lit,predicate=daisukes:tank/is_me]
execute if score #n daisukes.tk >= #max_mines daisukes.tk run return run function daisukes:modifiers/tank/mine/fail
execute align xz positioned ~0.5 ~ ~0.5 run function daisukes:modifiers/tank/mine/place
