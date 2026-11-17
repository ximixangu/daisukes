# Com al jugador que s'ha passat de corda: la molla es trenca (#snap de mal) i queda al 25 %
scoreboard players set @s daisukes.cw_s 6000
scoreboard players set @s daisukes.cw_h 0
scoreboard players set @s daisukes.cw_o 0
tag @s remove daisukes.cw_ding
execute if score #snap daisukes.cw matches 1.. run function daisukes:modifiers/clockwork/fx/hurt with storage daisukes:clockwork cfg.snap
execute at @s run playsound minecraft:entity.item.break player @a ~ ~ ~ 1 0.6
execute at @s run playsound minecraft:block.anvil.land player @a ~ ~ ~ 0.3 1.8
scoreboard players operation #tg daisukes.cw = @s daisukes.cw
execute as @e[type=minecraft:item_display,tag=daisukes.cw_key] if score @s daisukes.cw = #tg daisukes.cw at @s run function daisukes:modifiers/clockwork/fx/snap
