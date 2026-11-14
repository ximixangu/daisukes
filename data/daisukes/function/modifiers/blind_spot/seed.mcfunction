# Com a jugador: una carrega a 6-16 blocs en qualsevol direccio. Torna 1 si l'ha posada, 0 si no hi cabia
# i -1 si ja n'hi ha #cap a 16 blocs
execute store result score #n daisukes.bspot if entity @e[type=minecraft:marker,tag=daisukes.bspot,distance=..16]
execute if score #n daisukes.bspot >= #cap daisukes.bspot run return -1
execute store result score #yaw daisukes.bspot run random value 0..359
execute store result score #d daisukes.bspot run random value 6..16
scoreboard players set #placed daisukes.bspot 0
summon minecraft:marker ~ ~ ~ {Tags: ["daisukes.bspot_probe"]}
execute as @e[type=minecraft:marker,tag=daisukes.bspot_probe] run function daisukes:modifiers/blind_spot/probe
return run scoreboard players get #placed daisukes.bspot
