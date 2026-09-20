execute as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!marker,tag=!creeper_marker] run function daisukes:modifiers/mini_creeper/mark

execute as @e[type=marker,tag=creeper_marker,predicate=daisukes:mini_creeper/death_check] run function daisukes:modifiers/mini_creeper/spawn_creeper
execute as @e[type=marker,tag=creeper_marker] if predicate daisukes:mini_creeper/despawn_check run kill @s