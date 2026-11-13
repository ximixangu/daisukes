# Com a jugador, als seus peus. Neix un laser al seu nivell:
#   vermell = arran de terra (s'ha de saltar), blau = a l'alcada del coll (s'ha d'ajupir)
# Si ja n'hi ha un a prop, el nou es del mateix color: mai cal saltar i ajupir-se alhora
execute store result score #type daisukes.laser run random value 0..1
execute if entity @e[type=block_display,tag=daisukes.laser_low,distance=..24] run scoreboard players set #type daisukes.laser 0
execute if entity @e[type=block_display,tag=daisukes.laser_high,distance=..24] run scoreboard players set #type daisukes.laser 1
execute if score #type daisukes.laser matches 0 run summon minecraft:block_display ~ ~0.25 ~ {Tags: ["daisukes.laser", "daisukes.laser_low", "daisukes.laser_new"], block_state: {Name: "minecraft:red_concrete"}, Glowing: 1b, glow_color_override: 16728128, brightness: {sky: 15, block: 15}, teleport_duration: 1, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, -0.05f, -0.05f], scale: [0f, 0.1f, 0.1f]}}
execute if score #type daisukes.laser matches 1 run summon minecraft:block_display ~ ~1.6 ~ {Tags: ["daisukes.laser", "daisukes.laser_high", "daisukes.laser_new"], block_state: {Name: "minecraft:light_blue_concrete"}, Glowing: 1b, glow_color_override: 4251903, brightness: {sky: 15, block: 15}, teleport_duration: 1, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, -0.05f, -0.05f], scale: [0f, 0.1f, 0.1f]}}

# Ve d'una de les 4 direccions (gir 0, 90, 180 o 270). Amb 90 i 270 avanca per l'eix X; si no, per la Z
execute store result score #dir daisukes.laser run random value 0..3
execute store result entity @e[type=block_display,tag=daisukes.laser_new,limit=1] Rotation[0] float 90 run scoreboard players get #dir daisukes.laser
execute if score #dir daisukes.laser matches 1 run tag @e[type=block_display,tag=daisukes.laser_new] add daisukes.laser_x
execute if score #dir daisukes.laser matches 3 run tag @e[type=block_display,tag=daisukes.laser_new] add daisukes.laser_x
execute as @e[type=block_display,tag=daisukes.laser_new] at @s run function daisukes:modifiers/laser_limbo/appear
