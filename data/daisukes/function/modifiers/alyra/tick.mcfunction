# Dins l'aigua: verí (es veu als cors) i wither, que es el que fa mal (~1 cor per segon) i pot matar
execute as @a[gamemode=!spectator] if predicate daisukes:alyra/on_water run effect give @s minecraft:poison 1 3 true
execute as @a[gamemode=!spectator] if predicate daisukes:alyra/on_water run effect give @s minecraft:wither 1 3 true
