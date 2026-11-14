# Trencada: la marca perque orb la tregui i la fa trossos
tag @s add daisukes.orb_dead
scoreboard players operation #id daisukes.orb = @s daisukes.orb_id
# Perfect: picada mentre encara brillava blanca -> escut, com l'Iso (per a qui l'ha picat, encara que no sigui seva)
execute if score @s daisukes.orb_age matches ..24 as @a[tag=daisukes.orb_popper] at @s run function daisukes:modifiers/orbital/perfect
execute as @e[type=minecraft:item_display,tag=daisukes.orb_skin] if score @s daisukes.orb_id = #id daisukes.orb at @s run function daisukes:modifiers/orbital/shatter
execute if entity @s[tag=daisukes.orb_volt] at @s positioned ~ ~0.4 ~ run function daisukes:modifiers/orbital/volt/pop
execute if entity @s[tag=daisukes.orb_wood] at @s positioned ~ ~0.4 ~ run function daisukes:modifiers/orbital/wood/pop
execute if entity @s[tag=daisukes.orb_slime] at @s positioned ~ ~0.4 ~ run function daisukes:modifiers/orbital/slime/pop
execute if entity @s[tag=daisukes.orb_slimelet] at @s positioned ~ ~0.4 ~ run function daisukes:modifiers/orbital/slime/pop
execute if entity @s[tag=daisukes.orb_ender] at @s positioned ~ ~0.4 ~ run function daisukes:modifiers/orbital/ender/pop
execute if entity @s[tag=daisukes.orb_copper] at @s positioned ~ ~0.4 ~ run function daisukes:modifiers/orbital/copper/pop
# El slime gros, a mes, es parteix en tres
execute if entity @s[tag=daisukes.orb_slime] run function daisukes:modifiers/orbital/slime/split
