# Com a jugador, al centre del bloc on te els peus: hi ha d'haver terra ferma a sota (no aire, aigua ni herba) i cap
# altra mina en aquest bloc
execute if block ~ ~-0.05 ~ #daisukes:tank/loose run return run function daisukes:modifiers/tank/mine/fail
execute if entity @e[type=minecraft:block_display,tag=daisukes.tk_mine,distance=..0.5] run return run function daisukes:modifiers/tank/mine/fail
execute summon minecraft:block_display run function daisukes:modifiers/tank/mine/setup
playsound minecraft:block.iron_trapdoor.close block @a ~ ~ ~ 0.6 1.6
playsound minecraft:block.copper_bulb.turn_on block @a ~ ~ ~ 0.8 1.8
