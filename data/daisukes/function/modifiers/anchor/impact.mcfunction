scoreboard players set #phase daisukes.anchor 2
scoreboard players set #t daisukes.anchor 0
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] as @e[type=minecraft:block_display,tag=daisukes.anchor_part] run tp @s ~ ~ ~
execute as @e[type=minecraft:block_display,tag=daisukes.anchor_shadow] run function daisukes:modifiers/anchor/remove
# Cop sec: enclusa, nucli pesant i pols en rodona (l'ona s'eixampla als 2 ticks seguents: wave)
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run playsound minecraft:block.anvil.land block @a ~ ~ ~ 1 0.5
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run playsound minecraft:block.heavy_core.place block @a ~ ~ ~ 1 0.6
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run playsound minecraft:item.mace.smash_ground block @a ~ ~ ~ 0.8 0.7
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:dust_plume ~ ~0.1 ~ 0.6 0.05 0.6 0.02 24 force @a[distance=..48]
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:crit ~ ~0.3 ~ 0.4 0.2 0.4 0.4 16 force @a[distance=..48]
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:poof ~1.30 ~0.1 ~0.00 0 0 0 0.03 1 force @a[distance=..48]
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:poof ~1.20 ~0.1 ~0.50 0 0 0 0.03 1 force @a[distance=..48]
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:poof ~0.92 ~0.1 ~0.92 0 0 0 0.03 1 force @a[distance=..48]
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:poof ~0.50 ~0.1 ~1.20 0 0 0 0.03 1 force @a[distance=..48]
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:poof ~0.00 ~0.1 ~1.30 0 0 0 0.03 1 force @a[distance=..48]
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:poof ~-0.50 ~0.1 ~1.20 0 0 0 0.03 1 force @a[distance=..48]
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:poof ~-0.92 ~0.1 ~0.92 0 0 0 0.03 1 force @a[distance=..48]
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:poof ~-1.20 ~0.1 ~0.50 0 0 0 0.03 1 force @a[distance=..48]
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:poof ~-1.30 ~0.1 ~0.00 0 0 0 0.03 1 force @a[distance=..48]
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:poof ~-1.20 ~0.1 ~-0.50 0 0 0 0.03 1 force @a[distance=..48]
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:poof ~-0.92 ~0.1 ~-0.92 0 0 0 0.03 1 force @a[distance=..48]
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:poof ~-0.50 ~0.1 ~-1.20 0 0 0 0.03 1 force @a[distance=..48]
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:poof ~-0.00 ~0.1 ~-1.30 0 0 0 0.03 1 force @a[distance=..48]
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:poof ~0.50 ~0.1 ~-1.20 0 0 0 0.03 1 force @a[distance=..48]
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:poof ~0.92 ~0.1 ~-0.92 0 0 0 0.03 1 force @a[distance=..48]
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:poof ~1.20 ~0.1 ~-0.50 0 0 0 0.03 1 force @a[distance=..48]
# L'encadenat ja no pot picar, posar, obrir ni pegar
execute as @e[type=minecraft:player,tag=daisukes.anchor_p,gamemode=!creative,gamemode=!spectator] run function daisukes:modifiers/anchor/catch
# La cadena (encara amagada) a l'ull de l'ancora
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run function daisukes:modifiers/anchor/chain_make
