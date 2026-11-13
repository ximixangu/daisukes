# Massa a prop d'algun jugador: aquí no
execute if entity @a[gamemode=!spectator,distance=..12] run return 0

# Arc amb Punch 16 (no es deixa caure en morir). follow_range més gran perquè detectin el jugador des d'on surten.
summon minecraft:skeleton ~ ~ ~ {Tags:["daisukes.voyage_skeleton"],attributes:[{id:"minecraft:follow_range",base:128}],equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"minecraft:punch":16}}}},drop_chances:{mainhand:0.0f}}

scoreboard players set #spawned daisukes.bone_voyage 1
