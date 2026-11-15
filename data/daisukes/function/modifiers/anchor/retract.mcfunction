# Baules que queden = les que hi havia en alliberar-se (#len) - ticks. Les que s'amaguen salten donant voltes
scoreboard players operation #reveal daisukes.anchor = #len daisukes.anchor
scoreboard players operation #reveal daisukes.anchor -= #t daisukes.anchor
execute if score #reveal daisukes.anchor matches ..-1 run return 0
execute unless score #shown daisukes.anchor > #reveal daisukes.anchor run return 0
execute as @e[type=minecraft:block_display,tag=daisukes.anchor_chain] if score @s daisukes.anchor_i >= #reveal daisukes.anchor if score @s daisukes.anchor_i < #shown daisukes.anchor at @s run function daisukes:modifiers/anchor/unlink
scoreboard players operation #n daisukes.anchor = #reveal daisukes.anchor
function daisukes:modifiers/anchor/chain_count
# Un clic de cadena per baula, cada cop mes agut
execute if score #t daisukes.anchor matches 1 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.break block @a ~ ~ ~ 0.45 0.91
execute if score #t daisukes.anchor matches 2 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.break block @a ~ ~ ~ 0.45 0.97
execute if score #t daisukes.anchor matches 3 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.break block @a ~ ~ ~ 0.45 1.03
execute if score #t daisukes.anchor matches 4 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.break block @a ~ ~ ~ 0.45 1.09
execute if score #t daisukes.anchor matches 5 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.break block @a ~ ~ ~ 0.45 1.15
execute if score #t daisukes.anchor matches 6 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.break block @a ~ ~ ~ 0.45 1.21
execute if score #t daisukes.anchor matches 7 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.break block @a ~ ~ ~ 0.45 1.27
execute if score #t daisukes.anchor matches 8 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.break block @a ~ ~ ~ 0.45 1.33
execute if score #t daisukes.anchor matches 9 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.break block @a ~ ~ ~ 0.45 1.39
execute if score #t daisukes.anchor matches 10 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.break block @a ~ ~ ~ 0.45 1.45
execute if score #t daisukes.anchor matches 11 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.break block @a ~ ~ ~ 0.45 1.51
execute if score #t daisukes.anchor matches 12 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.break block @a ~ ~ ~ 0.45 1.57
execute if score #t daisukes.anchor matches 13 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.break block @a ~ ~ ~ 0.45 1.63
execute if score #t daisukes.anchor matches 14 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.break block @a ~ ~ ~ 0.45 1.69
execute if score #t daisukes.anchor matches 15 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run playsound minecraft:block.chain.break block @a ~ ~ ~ 0.45 1.75
