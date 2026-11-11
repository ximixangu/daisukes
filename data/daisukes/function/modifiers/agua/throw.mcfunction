execute store result score @s agua_pos run random value 1..8

execute if score @s agua_pos matches 1 positioned ~3 ~ ~ if block ~ ~ ~ air run summon minecraft:lingering_potion ~ ~1 ~ {Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water_breathing"}}},Motion:[0.0,0.3,0.0]}

execute if score @s agua_pos matches 2 positioned ~2 ~ ~2 if block ~ ~ ~ air run summon minecraft:lingering_potion ~ ~1 ~ {Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water_breathing"}}},Motion:[0.0,0.3,0.0]}

execute if score @s agua_pos matches 3 positioned ~ ~ ~3 if block ~ ~ ~ air run summon minecraft:lingering_potion ~ ~1 ~ {Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water_breathing"}}},Motion:[0.0,0.3,0.0]}

execute if score @s agua_pos matches 4 positioned ~-2 ~ ~2 if block ~ ~ ~ air run summon minecraft:lingering_potion ~ ~1 ~ {Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water_breathing"}}},Motion:[0.0,0.3,0.0]}

execute if score @s agua_pos matches 5 positioned ~-3 ~ ~ if block ~ ~ ~ air run summon minecraft:lingering_potion ~ ~1 ~ {Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water_breathing"}}},Motion:[0.0,0.3,0.0]}

execute if score @s agua_pos matches 6 positioned ~-2 ~ ~-2 if block ~ ~ ~ air run summon minecraft:lingering_potion ~ ~1 ~ {Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water_breathing"}}},Motion:[0.0,0.3,0.0]}

execute if score @s agua_pos matches 7 positioned ~ ~ ~-3 if block ~ ~ ~ air run summon minecraft:lingering_potion ~ ~1 ~ {Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water_breathing"}}},Motion:[0.0,0.3,0.0]}

execute if score @s agua_pos matches 8 positioned ~2 ~ ~-2 if block ~ ~ ~ air run summon minecraft:lingering_potion ~ ~1 ~ {Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water_breathing"}}},Motion:[0.0,0.3,0.0]}