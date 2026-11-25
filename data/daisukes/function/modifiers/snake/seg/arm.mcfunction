# Com a tros nou, a la seva cantonada: mentre el seu amo el toqui (n'acaba de sortir, o hi ha tornat sense sortir-ne
# del tot) no fa mal. Quan ja no el toca, si: a tothom, a ell tambe. Sense id (d'una activacio anterior): fora
execute unless score @s daisukes.sn_id matches 1.. run return run function daisukes:modifiers/snake/seg/retire
scoreboard players operation #me daisukes.sn = @s daisukes.sn_id
execute if entity @a[predicate=daisukes:snake/mine,dx=0,dy=0,dz=0] run return 0
tag @s remove daisukes.sn_fresh
tag @s add daisukes.sn_armed
