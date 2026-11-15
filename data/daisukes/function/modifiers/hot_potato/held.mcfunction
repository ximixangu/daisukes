# El portador ja no hi es (ha mort, ha marxat, ha desaparegut): explota on sigui la patata
execute unless entity @e[tag=daisukes.potato2_holder] run return run function daisukes:modifiers/hot_potato/explode

# La patata flota sobre el cap del portador (el mes proper, per si algu torna amb el tag d'una altra partida) i gira.
# teleport_duration fa que la segueixi suau; just despres de passar-la val 6 i es veu volar.
execute at @e[type=item_display,tag=daisukes.potato2] as @e[tag=daisukes.potato2_holder,sort=nearest,limit=1] at @s anchored eyes positioned ^ ^ ^ as @e[type=item_display,tag=daisukes.potato2] rotated as @s run tp @s ~ ~0.7 ~ ~9 0
execute if score #held daisukes.potato2 matches 6 as @e[type=item_display,tag=daisukes.potato2] run data merge entity @s {teleport_duration: 3}

# Una flameta a dalt, com una metxa, i espurnes els 3 ultims segons
execute at @e[type=item_display,tag=daisukes.potato2] run particle minecraft:small_flame ~ ~0.25 ~ 0.02 0.02 0.02 0.005 1
execute if score #time daisukes.potato2 matches ..60 at @e[type=item_display,tag=daisukes.potato2] run particle minecraft:electric_spark ~ ~0.2 ~ 0.12 0.12 0.12 0.03 2

# Compte enrere
scoreboard players remove #time daisukes.potato2 1
scoreboard players add #held daisukes.potato2 1
execute store result bossbar daisukes:potato value run scoreboard players get #time daisukes.potato2
execute if score #time daisukes.potato2 matches ..0 run return run function daisukes:modifiers/hot_potato/explode
scoreboard players operation #s daisukes.potato2 = #time daisukes.potato2
scoreboard players operation #s daisukes.potato2 %= #20 daisukes.potato2
execute if score #held daisukes.potato2 matches 1 run function daisukes:modifiers/hot_potato/second
execute if score #s daisukes.potato2 matches 0 run function daisukes:modifiers/hot_potato/second
execute if score #s daisukes.potato2 matches 10 if score #time daisukes.potato2 matches ..60 run function daisukes:modifiers/hot_potato/second

# Passar-la: el portador (jugador) ha pegat a algu (no durant el primer mig segon)
execute if score #held daisukes.potato2 matches 10.. at @e[type=item_display,tag=daisukes.potato2] as @a[tag=daisukes.potato2_holder,distance=..8,scores={daisukes.potato2_hit=1..}] at @s run function daisukes:modifiers/hot_potato/pass
