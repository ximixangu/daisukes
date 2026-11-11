execute if predicate daisukes:dark/location_check run effect give @s minecraft:darkness 3 0 true
execute if predicate daisukes:dark/location_check run effect give @s minecraft:weakness 1 0 true
execute if predicate daisukes:dark/location_check run effect give @s minecraft:mining_fatigue 1 0 true
execute if predicate daisukes:dark/location_check run effect give @s minecraft:hunger 1 0 true
execute if predicate daisukes:dark/location_check as @s[tag=darken] if score @s dark_timer matches 160.. run effect give @s minecraft:wither 2 0 true
execute if predicate daisukes:dark/location_check as @s[tag=!darken] run playsound minecraft:entity.warden.nearby_close player @s ~ ~ ~ 0.8 0.7
execute if predicate daisukes:dark/location_check as @s[tag=!darken] run tag @s add darken
execute unless predicate daisukes:dark/location_check as @s[tag=darken] run tag @s remove darken