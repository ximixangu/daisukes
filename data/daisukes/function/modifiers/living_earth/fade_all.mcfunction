# Tots de cop (si torna a sortir Living Earth abans que acabin de desapareixer)
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black] at @s run function daisukes:modifiers/living_earth/fade_one
schedule clear daisukes:modifiers/living_earth/fade
function daisukes:modifiers/living_earth/fade_end
