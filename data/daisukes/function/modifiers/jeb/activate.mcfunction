execute as @a run give @s minecraft:lead
scoreboard objectives add daisukes.jeb_timer dummy
execute at @a run summon minecraft:sheep ~ ~ ~ {CustomName:'jeb_',CustomNameVisible:0b,Invulnerable:1b,Tags:["jeb_sheep"]}