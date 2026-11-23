# Com al mob que salta, als peus. Com util/teleport (la fruita de chorus), pero per a mobs: fins a 10 columnes a
# l'atzar entre #near i #far blocs, on nomes baixa per lloc buit (no travessa roca: de dins d'una cova no surt a
# fora) i on el mob hi cap (alts i amples: #daisukes:ender_mobs/tall i wide). Els de l'aigua (#minecraft:aquatic)
# busquen aigua; els altres, terra ferm i, si son a l'aigua i no en troben, aigua. Deixa #done a 1 si ha saltat
scoreboard players set #done daisukes.em 0
# Cada columna es mira des d'1 bloc per sobre dels peus; si es a l'aigua, des de 2 (aixi pot sortir a la riba)
scoreboard players set #up daisukes.em 1
execute if predicate daisukes:ender_mobs/in_water run scoreboard players set #up daisukes.em 2
execute store result storage daisukes:ender_mobs at.up int 1 run scoreboard players get #up daisukes.em
scoreboard players set #tall daisukes.em 0
execute if entity @s[type=#daisukes:ender_mobs/tall] run scoreboard players set #tall daisukes.em 1
scoreboard players set #wide daisukes.em 0
execute if entity @s[type=#daisukes:ender_mobs/wide] run scoreboard players set #wide daisukes.em 1
scoreboard players set #mode daisukes.em 0
execute if entity @s[type=#minecraft:aquatic] run scoreboard players set #mode daisukes.em 1
scoreboard players set #tries daisukes.em 10
function daisukes:modifiers/ender_mobs/tp/try
execute if score #done daisukes.em matches 1 run return 1
execute if score #mode daisukes.em matches 1 run return fail
execute unless predicate daisukes:ender_mobs/in_water run return fail
scoreboard players set #mode daisukes.em 1
scoreboard players set #tries daisukes.em 10
function daisukes:modifiers/ender_mobs/tp/try
