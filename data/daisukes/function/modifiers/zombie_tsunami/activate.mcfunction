say zombi
execute as @e[type=minecraft:zombie,tag=!daisukes_zombie_tsunami] run attribute @s minecraft:follow_range base set 2000
execute as @e[type=minecraft:zombie,tag=!daisukes_zombie_tsunami] run effect give @s minecraft:speed infinite 3 false
execute as @e[type=minecraft:zombie,tag=!daisukes_zombie_tsunami] run attribute @s minecraft:spawn_reinforcements base set 10

tag @e[type=minecraft:zombie, tag=!daisukes_zombie_tsunami] add daisukes_zombie_tsunami