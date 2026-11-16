# Com al jugador que acaba de posar un bloc (avenc living_earth/placed): un cop, i nomes si Living Earth esta actiu
advancement revoke @s only daisukes:living_earth/placed
execute unless data storage daisukes:state {active: ["living_earth"]} run return 0
execute unless entity @s[gamemode=!creative,gamemode=!spectator] run return 0
execute unless score @s daisukes.earth matches 1.. run function daisukes:modifiers/living_earth/join
scoreboard players operation #me daisukes.earth = @s daisukes.earth
# El bloc que s'acaba de posar es el primer que troba el raig des dels ulls
scoreboard players set #mode daisukes.earth 1
scoreboard players set #step daisukes.earth 0
execute anchored eyes positioned ^ ^ ^ run function daisukes:modifiers/living_earth/ray
scoreboard players set #mode daisukes.earth 0
kill @e[type=minecraft:marker,tag=daisukes.earth_hit]
