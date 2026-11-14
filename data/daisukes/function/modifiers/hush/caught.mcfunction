# Tres boques de sculk surten del terra i et criden: 3 cors que travessen l'armadura
tag @s add daisukes.hush_caught
# Surten a l'altura dels peus; si t'enxampen a l'aire (saltant), a l'altura del bloc
execute if entity @s[nbt={OnGround: true}] run function daisukes:modifiers/hush/mouths
execute unless entity @s[nbt={OnGround: true}] align y run function daisukes:modifiers/hush/mouths
particle minecraft:sonic_boom ~ ~1 ~
particle minecraft:sculk_soul ~ ~1 ~ 0.4 0.6 0.4 0.05 20
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1.5 1
damage @s 12 minecraft:sonic_boom
