execute at @s run particle minecraft:soul ~ ~ ~ 0.2 0.3 0.2 0.05 20

execute at @s run playsound minecraft:particle.soul_escape master @a ~ ~-2 ~ 1 1.5

execute at @s run summon minecraft:creeper ~ ~-2 ~ {attributes:[{id:"minecraft:scale",base:0.5},{id:"minecraft:follow_range",base:256}],Motion:[0.0d,0.5d,0.0d],Fuse:15,HasVisualFire:1b,Tags:["creeper_marker"]}

kill @s