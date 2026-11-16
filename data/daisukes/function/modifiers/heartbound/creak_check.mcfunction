# Com al creaking del jugador (des de la posicio del jugador): massa lluny (o en una altra dimensio) o repetit, fora
execute unless entity @s[distance=..40] at @s run return run function daisukes:modifiers/heartbound/vanish
scoreboard players add #near daisukes.heart 1
execute if score #near daisukes.heart matches 2.. at @s run return run function daisukes:modifiers/heartbound/vanish
# A mes de 20 blocs 3 s seguits (no et pot seguir, o fuges sense mirar-lo): torna a sortir darrere teu
execute if entity @s[distance=..20] run return run scoreboard players set @s daisukes.heart_t 0
scoreboard players add @s daisukes.heart_t 1
execute if score @s daisukes.heart_t matches 3.. at @s run function daisukes:modifiers/heartbound/lost
