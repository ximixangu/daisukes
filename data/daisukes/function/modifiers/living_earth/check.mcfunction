# Com al cursor, al centre del bloc que mirava
scoreboard players set #has daisukes.earth 1
execute if score @s daisukes.earth_k matches 0 run return 0
execute unless block ~ ~ ~ #daisukes:living_earth/clear run return 0
scoreboard players set @s daisukes.earth_k 0
# Era negre (ho fa scar_mined), o era un bloc que acabava de posar ell (s'ho queda)
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_set,tag=!daisukes.earth_ghost,distance=..0.5] run function daisukes:modifiers/living_earth/scar_mined
execute if entity @e[type=minecraft:block_display,tag=daisukes.earth_black,distance=..0.5] run return 0
execute as @e[type=minecraft:marker,tag=daisukes.earth_placed,distance=..0.5] run return run function daisukes:modifiers/living_earth/unplace
# Sorra o grava que cau: no l'han trencat
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=minecraft:falling_block,dx=0,dy=0,dz=0] run return 0
execute if score #holes daisukes.earth matches 400.. run return 0
function daisukes:modifiers/living_earth/new_hole
