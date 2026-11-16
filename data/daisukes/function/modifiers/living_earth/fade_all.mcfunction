# Tots de cop (ha tornat a sortir mentre desapareixien, o s'ha encallat)
schedule clear daisukes:modifiers/living_earth/fade
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black] at @s run function daisukes:modifiers/living_earth/fade_block
function daisukes:modifiers/living_earth/fade_end
