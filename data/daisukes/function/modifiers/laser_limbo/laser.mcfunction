# Com a laser. Edat en ticks
scoreboard players add @s daisukes.laser 1

# En neixer s'allarga des del centre; quan ja ha fet els 24 blocs (96 ticks) s'encongeix i desapareix
execute if score @s daisukes.laser matches 2 run data merge entity @s {start_interpolation: 0, interpolation_duration: 6, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-12f, -0.05f, -0.05f], scale: [24f, 0.1f, 0.1f]}}
execute if score @s daisukes.laser matches 97 run data merge entity @s {start_interpolation: 0, interpolation_duration: 6, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, -0.05f, -0.05f], scale: [0f, 0.1f, 0.1f]}}
execute if score @s daisukes.laser matches 104.. run return run kill @s
execute if score @s daisukes.laser matches 97.. run return 0

# Llum a les puntes i un brunzit cada segon (greu o agut segons el color; com mes a prop, mes fort)
particle minecraft:end_rod ^12 ^ ^ 0 0 0 0 1 force
particle minecraft:end_rod ^-12 ^ ^ 0 0 0 0 1 force
scoreboard players operation #pulse daisukes.laser = @s daisukes.laser
scoreboard players operation #pulse daisukes.laser %= #20 daisukes.math
execute if score #pulse daisukes.laser matches 0 if entity @s[tag=daisukes.laser_low] run playsound minecraft:block.beacon.ambient record @a ~ ~ ~ 1.2 0.7
execute if score #pulse daisukes.laser matches 0 if entity @s[tag=daisukes.laser_high] run playsound minecraft:block.beacon.ambient record @a ~ ~ ~ 1.2 1.5

# Avanca 0.25 blocs (5 blocs/s). #b0 i #b1 = on era i on es ara, en l'eix per on avanca (decimes de bloc)
scoreboard players set #axis daisukes.laser 0
execute if entity @s[tag=daisukes.laser_x] run scoreboard players set #axis daisukes.laser 1
execute if score #axis daisukes.laser matches 0 store result score #b0 daisukes.laser run data get entity @s Pos[2] 10
execute if score #axis daisukes.laser matches 1 store result score #b0 daisukes.laser run data get entity @s Pos[0] 10
tp @s ^ ^ ^0.25
execute if score #axis daisukes.laser matches 0 store result score #b1 daisukes.laser run data get entity @s Pos[2] 10
execute if score #axis daisukes.laser matches 1 store result score #b1 daisukes.laser run data get entity @s Pos[0] 10
execute store result score #h daisukes.laser run data get entity @s Pos[1] 10

# Jugadors a l'abast del raig (fa 24 blocs de llarg)
execute as @e[type=player,gamemode=!spectator,distance=..12.5] run function daisukes:modifiers/laser_limbo/cross
