# Com a jugador (no espectador), als seus peus, cada tick

# Salt: esclaten totes les seves mines (mine/detonate). Val el salt que veu el servidor (jumped) i tambe la tecla de
# saltar premuda des de terra, encara que no pugui saltar (un altre modificador). Muntat, saltar es cosa del vehicle
execute if score @s daisukes.tk_jump matches 1.. run function daisukes:modifiers/tank/jumped
execute if predicate daisukes:tank/jump if entity @s[tag=daisukes.tk_ground,tag=!daisukes.tk_hop] unless predicate daisukes:tank/riding run function daisukes:modifiers/tank/mine/detonate
tag @s remove daisukes.tk_hop
execute if predicate daisukes:tank/jump run tag @s add daisukes.tk_hop
tag @s remove daisukes.tk_ground
execute if predicate daisukes:on_ground run tag @s add daisukes.tk_ground

# Shift premut ara (no el tick d'abans): planta una mina (mine/plant mira que sigui a terra i no muntat)
execute if predicate daisukes:tank/sneak unless entity @s[tag=daisukes.tk_sneak] run function daisukes:modifiers/tank/mine/plant
tag @s remove daisukes.tk_sneak
execute if predicate daisukes:tank/sneak run tag @s add daisukes.tk_sneak

# Muntat (cavall, barca...): els controls del vehicle. A o D, nomes una de les dues: gira (turn). Si no, es mou com
# sempre (free)
execute if predicate daisukes:tank/riding run return run function daisukes:modifiers/tank/free
execute if predicate daisukes:tank/left run return run function daisukes:modifiers/tank/turn with storage daisukes:tank config.left
execute if predicate daisukes:tank/right run return run function daisukes:modifiers/tank/turn with storage daisukes:tank config.right
function daisukes:modifiers/tank/free
