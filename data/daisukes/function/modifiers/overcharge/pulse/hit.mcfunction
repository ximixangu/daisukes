# Macro: {pulse_damage}. Com al jugador que la descarga agafa a terra (o a l'aigua)
$damage @s $(pulse_damage) minecraft:magic
execute at @s run particle minecraft:electric_spark ~ ~0.3 ~ 0.3 0.2 0.3 0.1 15 force
