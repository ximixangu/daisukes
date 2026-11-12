execute as @s run tag @s add explosion
execute at @s run playsound minecraft:item.goat_horn.sound.2 block @a ~ ~ ~ 2 1 1
execute at @s run summon tnt ~ ~ ~ {NoGravity:1b,fuse:90,explosion_power:15,block_state:{Name:"minecraft:air"}}
execute at @s run ride @e[type=minecraft:tnt,sort=nearest,limit=1] mount @s