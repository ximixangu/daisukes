# Com al jugador que no te temps lliure: la clau fa un pas enrere cada 10/14/20/30 ticks segons el nivell
scoreboard players set #idur daisukes.cw 10
execute if score @s daisukes.cw_t matches 1 run scoreboard players set #idur daisukes.cw 14
execute if score @s daisukes.cw_t matches 2 run scoreboard players set #idur daisukes.cw 20
execute if score @s daisukes.cw_t matches 3 run scoreboard players set #idur daisukes.cw 30
scoreboard players operation #q daisukes.cw = #now daisukes.cw
scoreboard players operation #q daisukes.cw += @s daisukes.cw
scoreboard players operation #q daisukes.cw %= #idur daisukes.cw
execute unless score #q daisukes.cw matches 0 run return 0
scoreboard players remove @s daisukes.cw_k 1
execute if score @s daisukes.cw_k matches ..-1 run scoreboard players set @s daisukes.cw_k 7
# Tic-tac, a prop (els amics tambe el senten)
scoreboard players operation #q daisukes.cw = @s daisukes.cw_k
scoreboard players operation #q daisukes.cw %= #2 daisukes.cw
execute if score #q daisukes.cw matches 0 run playsound minecraft:block.comparator.click player @a[distance=..8] ~ ~ ~ 0.3 1.3
execute if score #q daisukes.cw matches 1 run playsound minecraft:block.comparator.click player @a[distance=..8] ~ ~ ~ 0.3 0.95
execute if score @s daisukes.cw_t matches 3 as @e[type=minecraft:item_display,tag=daisukes.cw_mine] at @s run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.01 2 normal @a
