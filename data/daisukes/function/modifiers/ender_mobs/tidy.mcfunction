# Macro: {keep}. Cada 2 s: deixen d'estar vigilats els mobs sense cap jugador a keep blocs (el radi + 16)
$execute as @e[tag=daisukes.em_mob] at @s unless entity @a[distance=..$(keep)] run function daisukes:modifiers/ender_mobs/untrack
