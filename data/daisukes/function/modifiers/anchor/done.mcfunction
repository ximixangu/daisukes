execute as @e[tag=daisukes.anchor,type=!minecraft:player] run function daisukes:modifiers/anchor/remove
scoreboard players set #phase daisukes.anchor 0
scoreboard players set #event daisukes.anchor 0
scoreboard players operation #wait daisukes.anchor = #every daisukes.anchor
