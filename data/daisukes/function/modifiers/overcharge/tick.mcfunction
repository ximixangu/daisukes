# Punter: un marker que marca on acaba cada raig (el centre del mob de l'altra punta). N'hi ha d'haver un i prou
execute store result score #pointers daisukes.oc if entity @e[type=minecraft:marker,tag=daisukes.oc_pointer]
execute if score #pointers daisukes.oc matches 2.. run kill @e[type=minecraft:marker,tag=daisukes.oc_pointer]
execute unless entity @e[type=minecraft:marker,tag=daisukes.oc_pointer] as @a[limit=1] at @s summon minecraft:marker run tag @s add daisukes.oc_pointer

# Mobs nous a menys de 32 blocs d'un jugador entren a la xarxa (com a molt #max_mobs; 8 per jugador i tick).
# Qualsevol mob: ni objectes, fletxes, vehicles, displays... (#daisukes:non_mob) ni el drac de l'End
execute store result score #count daisukes.oc if entity @e[tag=daisukes.oc_mob]
execute if score #count daisukes.oc < #max_mobs daisukes.oc at @e[type=minecraft:player,gamemode=!spectator] as @e[distance=..32,type=!minecraft:player,type=!#daisukes:non_mob,type=!minecraft:ender_dragon,predicate=!daisukes:overcharge/tracked,sort=nearest,limit=8] run function daisukes:modifiers/overcharge/track

# Morts. Marker de sobre: si el seu mob ja no es pot seleccionar, es que s'esta morint. Muntables: l'ombra segueix
# el seu mob, i la que no l'ha trobat es que s'ha mort
execute as @e[type=minecraft:marker,tag=daisukes.oc_rider] on vehicle if entity @s[tag=daisukes.oc_mob] at @s unless entity @e[tag=daisukes.oc_mob,distance=..0.001] run function daisukes:modifiers/overcharge/death
execute as @e[tag=daisukes.oc_ride] at @s run function daisukes:modifiers/overcharge/shadow/follow
execute as @e[type=minecraft:marker,tag=daisukes.oc_shadow,tag=!daisukes.oc_seen] at @s run function daisukes:modifiers/overcharge/shadow/lost
tag @e[type=minecraft:marker,tag=daisukes.oc_seen] remove daisukes.oc_seen

# Rajos: cada mob revisa els seus un tick de cada dos (els d'id senar, els ticks senars)
scoreboard players operation #odd daisukes.oc = #clock daisukes.oc
scoreboard players operation #odd daisukes.oc %= #2 daisukes.oc
execute if score #odd daisukes.oc matches 1 as @e[tag=daisukes.oc_mob,tag=daisukes.oc_odd] at @s run function daisukes:modifiers/overcharge/link/tick
execute if score #odd daisukes.oc matches 0 as @e[tag=daisukes.oc_mob,tag=!daisukes.oc_odd] at @s run function daisukes:modifiers/overcharge/link/tick

# Polsos dels mobs que s'han mort
execute as @e[type=minecraft:marker,tag=daisukes.oc_pulse] at @s run function daisukes:modifiers/overcharge/pulse/tick

tag @a remove daisukes.oc_zapped
# El punter torna amb un jugador (aixi sempre es en un chunk carregat)
execute as @a[limit=1] at @s run tp @e[type=minecraft:marker,tag=daisukes.oc_pointer] ~ ~ ~
scoreboard players add #clock daisukes.oc 1
execute if score #clock daisukes.oc matches 40.. run function daisukes:modifiers/overcharge/tidy
