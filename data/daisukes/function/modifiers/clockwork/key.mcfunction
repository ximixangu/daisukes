# Com al jugador, als seus peus: la seva clau (si no en te, o en te mes d'una, una de nova; a l'entrada, quan arriben els rellotges)
scoreboard players operation #tg daisukes.cw = @s daisukes.cw
execute as @e[type=minecraft:item_display,tag=daisukes.cw_key] if score @s daisukes.cw = #tg daisukes.cw run tag @s add daisukes.cw_mine
execute store result score #n daisukes.cw if entity @e[type=minecraft:item_display,tag=daisukes.cw_mine]
execute unless score #n daisukes.cw matches 1 if score #intro daisukes.cw matches ..8 run function daisukes:modifiers/clockwork/new_key
# Desfent-se: un pas enrere cada pocs ticks (mes a poc a poc com menys corda), amb un tic
scoreboard players set #idur daisukes.cw 2
execute if score @s daisukes.cw_h matches ..0 if score @s daisukes.cw_t matches ..3 unless entity @s[tag=daisukes.cw_wound] run function daisukes:modifiers/clockwork/unwind
tag @s remove daisukes.cw_wound
# La segueix: dret, a l'esquena (una mica enrere: mirant avall no es veu); nedant, arrossegant-se o planant, per sobre
# l'esquena i apuntant avall
execute positioned ~ ~1.1 ~ unless entity @s[dx=0,dy=0,dz=0] positioned as @s run function daisukes:modifiers/clockwork/follow_low
execute positioned ~ ~1.1 ~ if entity @s[dx=0,dy=0,dz=0] positioned as @s anchored eyes positioned ^ ^ ^ rotated ~ 0 positioned ^ ^-0.35 ^-0.38 as @e[type=minecraft:item_display,tag=daisukes.cw_mine] run tp @s ~ ~ ~ ~ 0
# Si ha girat, la clau mostra el pas nou
scoreboard players operation #pk daisukes.cw = @s daisukes.cw_k
execute as @e[type=minecraft:item_display,tag=daisukes.cw_mine] unless score @s daisukes.cw_k = #pk daisukes.cw run function daisukes:modifiers/clockwork/step
# Lliure: espurnes; poca corda: fum
scoreboard players operation #q daisukes.cw = #now daisukes.cw
scoreboard players operation #q daisukes.cw += @s daisukes.cw
scoreboard players operation #q daisukes.cw %= #10 daisukes.cw
execute if score #q daisukes.cw matches 0 if score @s daisukes.cw_h matches 1.. as @e[type=minecraft:item_display,tag=daisukes.cw_mine] at @s run particle minecraft:wax_on ~ ~ ~ 0.15 0.15 0.15 0 1 normal @a
tag @e[type=minecraft:item_display,tag=daisukes.cw_mine] remove daisukes.cw_mine
