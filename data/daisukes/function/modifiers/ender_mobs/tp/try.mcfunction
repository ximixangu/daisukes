# Un intent: una columna a l'atzar, entre #near i #far blocs en qualsevol direccio
execute store result storage daisukes:ender_mobs at.yaw int 1 run random value 0..359
execute store result score #r daisukes.em run random value 0..9999
scoreboard players operation #r daisukes.em %= #span daisukes.em
scoreboard players operation #r daisukes.em += #near daisukes.em
execute store result storage daisukes:ender_mobs at.dist int 1 run scoreboard players get #r daisukes.em
scoreboard players set #h daisukes.em 17
scoreboard players operation #h daisukes.em += #up daisukes.em
function daisukes:modifiers/ender_mobs/tp/try_at with storage daisukes:ender_mobs at

scoreboard players remove #tries daisukes.em 1
execute if score #done daisukes.em matches 0 if score #tries daisukes.em matches 1.. run function daisukes:modifiers/ender_mobs/tp/try
