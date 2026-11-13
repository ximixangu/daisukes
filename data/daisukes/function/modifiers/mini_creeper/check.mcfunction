scoreboard players set #timer daisukes.mini_creeper 0
execute as @e[type=minecraft:marker,tag=daisukes.creeper_marker] if predicate daisukes:mini_creeper/dying run function daisukes:modifiers/mini_creeper/release
execute as @e[type=minecraft:marker,tag=daisukes.creeper_marker] unless predicate daisukes:mini_creeper/has_host run kill @s
