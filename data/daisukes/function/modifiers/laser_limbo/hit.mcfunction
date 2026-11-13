# Com a jugador tocat, amb el gir del laser. 2.5 cors en dificultat normal (travessa armadura i escut)
# i el raig l'empeny cap on va
execute positioned as @s run damage @s 5 minecraft:sonic_boom at ^ ^ ^-1
execute at @s run particle minecraft:electric_spark ~ ~1 ~ 0.3 0.6 0.3 0.4 30 force
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0.2 0.5 0.2 0.12 12 force
execute at @s run playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1 1.8
