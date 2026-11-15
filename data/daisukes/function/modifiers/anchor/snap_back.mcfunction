# Sobre l'ancora, on sura; si alla no hi cap (sostre baix), a terra al costat de l'ancora (float ja el pujara fins on pugui)
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ~ ~3.2 ~ if function daisukes:modifiers/anchor/space run tp @s ~ ~ ~
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ~ ~3.2 ~ unless function daisukes:modifiers/anchor/space at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run tp @s ~ ~ ~
execute store result score #last daisukes.anchor run data get entity @s Pos[1] 1000
execute at @s run playsound minecraft:block.chain.hit player @a ~ ~ ~ 1 0.7
