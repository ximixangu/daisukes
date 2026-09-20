execute as @e[type=minecraft:zombie, tag=daisukes_zombie_tsunami] run attribute @s minecraft:follow_range base reset
execute as @e[type=minecraft:zombie, tag=daisukes_zombie_tsunami] run attribute @s minecraft:spawn_reinforcements base reset
execute as @e[type=minecraft:zombie, tag=daisukes_zombie_tsunami] run effect give @s minecraft:wither 10 3

tag @e[tag=daisukes_zombie_tsunami] remove daisukes_zombie_tsunami

weather clear
gamerule advance_weather true