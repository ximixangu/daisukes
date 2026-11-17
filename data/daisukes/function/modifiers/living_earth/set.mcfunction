# Torna el bloc de veritat (encara que hi hagi algu a dins: s'ofega) i la capa negra es queda a sobre
scoreboard players operation #v daisukes.earth = @s daisukes.earth_v
function daisukes:modifiers/living_earth/vault_xyz
execute unless entity @s[tag=daisukes.earth_ghost] run function daisukes:modifiers/living_earth/restore with storage daisukes:earth v
data merge entity @s {transformation: {translation: [-0.501f, -0.501f, -0.501f], scale: [1.002f, 1.002f, 1.002f]}}
tag @s remove daisukes.earth_wait
tag @s add daisukes.earth_set
scoreboard players add #order daisukes.earth 1
scoreboard players operation @s daisukes.earth = #order daisukes.earth
playsound minecraft:block.deepslate.place block @a ~ ~ ~ 0.5 0.6
