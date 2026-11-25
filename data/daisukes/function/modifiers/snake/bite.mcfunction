# Com al tros que toca el jugador sn_me, a la seva cantonada: mossegada des del centre del tros, i el tros fa
# pampallugues vermelles uns moments. Una sola mossegada per tick: si ja l'ha mossegat un altre tros (sn_me ja no hi
# es), res
execute unless entity @a[tag=daisukes.sn_me] run return 0
execute positioned ~0.5 ~0.5 ~0.5 as @a[tag=daisukes.sn_me,limit=1] run function daisukes:modifiers/snake/hurt with storage daisukes:snake config
tag @a remove daisukes.sn_me
tag @s add daisukes.sn_flash
scoreboard players set @s daisukes.sn_t 6
data merge entity @s {block_state: {Name: "minecraft:red_concrete"}, glow_color_override: 16724787}
