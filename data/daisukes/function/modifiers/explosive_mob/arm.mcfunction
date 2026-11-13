# Com a l'animal: porta una TNT invisible a sobre que esclata al cap de 4,5 s. Brilla, xiula i fumeja
tag @s add daisukes.kamikaze
effect give @s minecraft:glowing 5 0 true
execute at @s run playsound minecraft:item.goat_horn.sound.2 hostile @a ~ ~ ~ 2 1 1
execute at @s run playsound minecraft:entity.tnt.primed hostile @a ~ ~ ~ 1 1

tag @s add daisukes.kamikaze_now
execute at @s summon minecraft:tnt run function daisukes:modifiers/explosive_mob/fuse
tag @s remove daisukes.kamikaze_now
