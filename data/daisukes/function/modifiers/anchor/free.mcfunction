# L'ultima baula: s'allibera, a poc a poc (release: la cadena es desfa baula a baula i l'ancora s'enfonsa)
scoreboard players set #phase daisukes.anchor 4
scoreboard players set #t daisukes.anchor 0
scoreboard players set #pulse daisukes.anchor -1
scoreboard players operation #len daisukes.anchor = #shown daisukes.anchor
data modify storage daisukes:anchor m.n set value 0
bossbar set daisukes:anchor visible false
execute as @a run function daisukes:modifiers/anchor/unmark_all
tag @a remove daisukes.anchor_m
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run playsound minecraft:block.respawn_anchor.deplete block @a ~ ~ ~ 1 0.9
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.59 ^ run playsound minecraft:block.chain.break block @a ~ ~ ~ 1 0.5
# L'anella de l'ancora deixa anar la cadena amb un esclat de llum daurada
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.59 ^ run particle minecraft:flash{color:[1.0,0.85,0.45,1.0]} ~ ~ ~ 0 0 0 0 1 force @a[distance=..48]
execute as @e[type=minecraft:player,tag=daisukes.anchor_p,gamemode=!creative,gamemode=!spectator] at @s run function daisukes:modifiers/anchor/reward
execute as @a[tag=daisukes.anchor_p] run function daisukes:modifiers/anchor/restore
