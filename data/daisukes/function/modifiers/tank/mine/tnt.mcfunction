# Com a TNT nova, on era la mina
data merge entity @s {fuse: 0s, NoGravity: 1b, block_state: {Name: "minecraft:air"}}
execute store result entity @s explosion_power float 0.1 run scoreboard players get #power daisukes.tk
data modify entity @s owner set from entity @a[predicate=daisukes:tank/is_me,limit=1] UUID
