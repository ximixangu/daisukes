# Com a mina, on es, 4 cops per segon. Sense id (d'una activacio anterior: era en un chunk sense carregar quan es va
# acabar): fora. Encesa: que es compti a #lit (si estava en un chunk sense carregar, ara esclatara). Si no, i s'ha
# quedat sense terra a sota (l'han picat, una explosio...), es trenca sense esclatar, com una placa de pressio
execute unless score @s daisukes.tk_id matches 1.. run return run kill @s
execute if entity @s[tag=daisukes.tk_lit] run return run scoreboard players add #lit daisukes.tk 1
execute if block ~ ~-0.05 ~ #daisukes:tank/loose run function daisukes:modifiers/tank/mine/pop
