# Com al jugador que s'ha quedat sense corda, als seus peus
tag @s add daisukes.cw_frozen
effect give @s minecraft:glowing 3 0 true
playsound minecraft:entity.item.break player @a ~ ~ ~ 0.8 0.7
playsound minecraft:block.note_block.didgeridoo player @a ~ ~ ~ 0.7 0.6
scoreboard players operation #tg daisukes.cw = @s daisukes.cw
execute as @e[type=minecraft:item_display,tag=daisukes.cw_key] if score @s daisukes.cw = #tg daisukes.cw at @s run particle minecraft:large_smoke ~ ~ ~ 0.15 0.15 0.15 0.02 6 normal @a
execute as @e[type=minecraft:item_display,tag=daisukes.cw_key] if score @s daisukes.cw = #tg daisukes.cw at @s run particle minecraft:wax_off ~ ~ ~ 0.25 0.25 0.25 0 8 normal @a
