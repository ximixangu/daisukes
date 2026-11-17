# Com al jugador clavat, als seus peus: brilla sempre (cada 2 s, 3 s mes) i cada #frozen_t ticks grinyola (#frozen de mal)
scoreboard players operation #q daisukes.cw = #now daisukes.cw
scoreboard players operation #q daisukes.cw += @s daisukes.cw
scoreboard players operation #q2 daisukes.cw = #q daisukes.cw
scoreboard players operation #q2 daisukes.cw %= #40 daisukes.cw
execute if score #q2 daisukes.cw matches 0 run effect give @s minecraft:glowing 3 0 true
scoreboard players operation #q daisukes.cw %= #frozen_t daisukes.cw
execute unless score #q daisukes.cw matches 0 run return 0
execute if score #frozen daisukes.cw matches 1.. run function daisukes:modifiers/clockwork/fx/hurt with storage daisukes:clockwork cfg.frozen
playsound minecraft:block.grindstone.use player @a ~ ~ ~ 0.5 0.6
scoreboard players operation #tg daisukes.cw = @s daisukes.cw
execute as @e[type=minecraft:item_display,tag=daisukes.cw_key] if score @s daisukes.cw = #tg daisukes.cw at @s run particle minecraft:crit ~ ~ ~ 0.15 0.15 0.15 0.3 6 normal @a
execute as @e[type=minecraft:item_display,tag=daisukes.cw_key] if score @s daisukes.cw = #tg daisukes.cw at @s run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.01 3 normal @a
