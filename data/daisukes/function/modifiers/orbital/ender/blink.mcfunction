# Cada segon salta a un altre lloc al teu voltant (la pell no s'hi llisca: teleport_duration 0)
execute unless score @s daisukes.orb_age matches 1.. run return 0
scoreboard players operation #m daisukes.orb = @s daisukes.orb_age
scoreboard players operation #m daisukes.orb %= #20 daisukes.orb
execute unless score #m daisukes.orb matches 0 run return 0
execute at @s positioned ~ ~0.4 ~ run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0.05 25
execute store result entity @s Rotation[0] float 1 run random value -180..179
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 0.5 1.8
