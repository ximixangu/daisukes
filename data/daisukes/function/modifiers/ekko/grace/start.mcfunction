# Com al jugador que acaba de tornar: no pren mal de caiguda fins que toqui a terra (i com a minim 1 s), per si el tp
# no esborra la caiguda que portava (si tornava a l'eco mentre queia, el cop li arribaria igualment)
attribute @s minecraft:fall_damage_multiplier modifier remove daisukes:ekko
attribute @s minecraft:fall_damage_multiplier modifier add daisukes:ekko -1 add_multiplied_total
tag @s add daisukes.ek_fall
scoreboard players set @s daisukes.ek_gr 20
