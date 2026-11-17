# Com al jugador: els rellotges es fonen en la clau (que surt ara), amb un cop de carraca i un ding
execute as @e[type=minecraft:item_display,tag=daisukes.cw_intro] if score @s daisukes.cw = #me daisukes.cw run function daisukes:modifiers/clockwork/remove
playsound minecraft:item.crossbow.loading_end player @a ~ ~ ~ 1 1
playsound minecraft:block.note_block.bell player @a ~ ~ ~ 0.8 1.587401
particle minecraft:end_rod ~ ~1.2 ~ 0.3 0.3 0.3 0.08 20 normal @a
particle minecraft:wax_on ~ ~1.2 ~ 0.4 0.4 0.4 0 24 normal @a
