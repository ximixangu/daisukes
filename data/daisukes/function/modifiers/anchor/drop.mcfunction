# Com al jugador triat, als seus peus: comenca una ancorada
execute store result score #event daisukes.anchor run random value 1..1000000000
scoreboard players set #phase daisukes.anchor 1
scoreboard players set #t daisukes.anchor 0
scoreboard players operation #links daisukes.anchor = #total daisukes.anchor
scoreboard players operation #all daisukes.anchor = #total daisukes.anchor
scoreboard players set #rust daisukes.anchor 0
scoreboard players set #shown daisukes.anchor 0
scoreboard players set #reveal daisukes.anchor 0
scoreboard players set #pulse daisukes.anchor -1
scoreboard players set #burst daisukes.anchor 0
tag @a remove daisukes.anchor_last
tag @s add daisukes.anchor_p
tag @s add daisukes.anchor_last
scoreboard players operation @s daisukes.anchor = #event daisukes.anchor
# Cau 1,6 blocs davant seu (aixi la veu caure) si alla el terra es a la mateixa alcada; si no, als seus peus
execute rotated ~ 0 positioned ^ ^ ^1.6 if block ~ ~0.2 ~ #daisukes:anchor/open unless block ~ ~-0.2 ~ #daisukes:anchor/open run return run function daisukes:modifiers/anchor/spawn
function daisukes:modifiers/anchor/spawn
