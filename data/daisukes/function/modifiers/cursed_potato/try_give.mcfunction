# Un lloc de l'inventari a l'atzar (0-8 barra d'eines, 9-35 la resta). Si ja hi ha alguna cosa, aquest cop no en surt cap
scoreboard players set @s daisukes.potato 0
execute store result storage daisukes:temp potato.slot int 1 run random value 0..35
function daisukes:modifiers/cursed_potato/give with storage daisukes:temp potato
