# Cada tick (schedule, encara que ja hagi sortit el modificador seguent), fins que no en queda cap
execute unless data storage daisukes:earth {fading: 1b} run return 0
scoreboard players operation #fade daisukes.earth += #fstep daisukes.earth
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black] unless score @s daisukes.earth matches 1.. at @s run function daisukes:modifiers/living_earth/fade_one
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black] if score @s daisukes.earth <= #fade daisukes.earth at @s run function daisukes:modifiers/living_earth/fade_one
execute if entity @e[type=minecraft:block_display,tag=daisukes.earth_black] run return run schedule function daisukes:modifiers/living_earth/fade 1t replace
function daisukes:modifiers/living_earth/fade_end
