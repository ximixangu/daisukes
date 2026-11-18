# Com al marker d'un mob que s'esta morint (vida 0). Si l'ha mort un jugador, les animes l'empaitaran a ell
execute on vehicle on attacker if entity @s[type=minecraft:player] run tag @s add daisukes.soul_prey
execute if entity @a[tag=daisukes.soul_prey] on vehicle at @s run function daisukes:modifiers/mini_creeper/soul/birth
tag @a remove daisukes.soul_prey
kill @s
