# Com al jugador que ja es movia: les arrels surten igual a les cantonades, es tanquen al buit i tornen a entrar
execute align xz run function daisukes:modifiers/roots/tufts
execute as @e[type=minecraft:block_display,tag=daisukes.roots_tuft,tag=!daisukes.roots_dying] if score @s daisukes.roots = #me daisukes.roots run function daisukes:modifiers/roots/snap_set
execute align xz positioned ~0.5 ~ ~0.5 run playsound minecraft:block.rooted_dirt.break player @a ~ ~ ~ 0.8 0.6
execute align xz positioned ~0.5 ~ ~0.5 run playsound minecraft:entity.evoker_fangs.attack player @a ~ ~ ~ 0.6 1.2
