# Macro: {yaw: 0, 45, ... 315}. Si alla hi ha aire, la pocio surt 1 bloc amunt i hi torna a caure
$execute rotated $(yaw) 0 positioned ^ ^ ^3 if block ~ ~ ~ #minecraft:air run summon minecraft:lingering_potion ~ ~1 ~ {Item: {id: "minecraft:lingering_potion", count: 1, components: {"minecraft:potion_contents": {potion: "minecraft:water_breathing"}}}, Motion: [0.0, 0.3, 0.0]}
