# Com a corona del Rei que acaba de morir: vola cap al cap de qui l'ha mort, que en sera el "Rei" fins que
# s'acabi l'interregne (i, mentrestant, te Forca i Velocitat per acabar amb la cort)
execute as @a[tag=daisukes.king_usurper,limit=1] at @s run function daisukes:modifiers/king/player/usurper with storage daisukes:king arg
tag @s add daisukes.king_fly
tag @s add daisukes.king_to_wearer
scoreboard players set @s daisukes.king_t 0
playsound minecraft:entity.allay.item_thrown master @a[distance=..32] ~ ~ ~ 1 0.8
