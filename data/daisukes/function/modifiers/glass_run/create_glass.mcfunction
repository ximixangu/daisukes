setblock ~ ~-1 ~ minecraft:glass
data remove storage daisukes:temp pos

summon marker ~ ~-1 ~ {Tags:["daisukes.glass_marker"]}

execute as @e[type=marker,tag=daisukes.glass_marker,sort=nearest,limit=1] run data modify storage daisukes:temp pos set from entity @s Pos
data modify storage daisukes:data GlassQueue append from storage daisukes:temp pos

schedule function daisukes:modifiers/glass_run/pop_glass_queue 2s append