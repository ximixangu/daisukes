execute unless entity @e[type=minecraft:player,tag=daisukes.anchor_p,gamemode=!creative,gamemode=!spectator] run return run function daisukes:modifiers/anchor/abort
scoreboard players add #t daisukes.anchor 1
execute if score #t daisukes.anchor matches ..2 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run function daisukes:modifiers/anchor/wave
# La cadena surt de l'ancora cap a l'encadenat en 8 ticks (baules visibles = t x 1,5)
scoreboard players operation #reveal daisukes.anchor = #t daisukes.anchor
scoreboard players operation #reveal daisukes.anchor *= #3 daisukes.anchor
scoreboard players add #reveal daisukes.anchor 1
scoreboard players operation #reveal daisukes.anchor /= #2 daisukes.anchor
function daisukes:modifiers/anchor/chain_draw
execute if score #t daisukes.anchor matches 1 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.place block @a ~ ~ ~ 0.7 0.8
execute if score #t daisukes.anchor matches 2 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.place block @a ~ ~ ~ 0.7 0.9
execute if score #t daisukes.anchor matches 3 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.place block @a ~ ~ ~ 0.7 1.0
execute if score #t daisukes.anchor matches 4 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.place block @a ~ ~ ~ 0.7 1.1
execute if score #t daisukes.anchor matches 5 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.place block @a ~ ~ ~ 0.7 1.2
execute if score #t daisukes.anchor matches 6 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.place block @a ~ ~ ~ 0.7 1.3
execute if score #t daisukes.anchor matches 7 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.place block @a ~ ~ ~ 0.7 1.4
execute if score #t daisukes.anchor matches 8 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.place block @a ~ ~ ~ 0.7 1.5
execute if score #t daisukes.anchor matches 8.. run function daisukes:modifiers/anchor/hook
