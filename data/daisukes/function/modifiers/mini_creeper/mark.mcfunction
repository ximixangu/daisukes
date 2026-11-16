# Com a mob: un marker nou hi puja a sobre (si no s'hi pot muntar, el marker queda sol i tidy el treu).
# Si el tenen a prop dos jugadors surt dos cops en el mateix tick: nomes el marca el primer. Un mob que s'acaba
# de convertir (zombi ofegat, vilata curat...) pot portar ja el marker de l'anterior: no n'hi cal un altre
execute if entity @s[tag=daisukes.soul_host] run return 0
tag @s add daisukes.soul_host
execute on passengers if entity @s[tag=daisukes.soul_marker] run return 0
tag @s add daisukes.soul_host_now
execute at @s summon minecraft:marker run function daisukes:modifiers/mini_creeper/attach
tag @s remove daisukes.soul_host_now
