# Macro: {w2, d, dy}. Com a jugador, als peus: els mobs que toca
tag @s add daisukes.km_me
$execute positioned ~-$(w2) ~ ~-$(w2) as @e[type=#daisukes:katamari/crushable,dx=$(d),dy=$(dy),dz=$(d)] run function daisukes:modifiers/katamari/crush/mob
tag @s remove daisukes.km_me
