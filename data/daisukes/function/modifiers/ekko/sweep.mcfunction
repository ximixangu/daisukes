# Cada 2 ticks, despres dels jugadors: els ecos que no ha marcat ningu (el seu jugador ha mort, ha sortit, es
# espectador, o es un eco vell que torna amb el seu chunk) s'esvaeixen
execute as @e[type=minecraft:mannequin,tag=daisukes.ek,tag=!daisukes.ek_ok] at @s run function daisukes:modifiers/ekko/echo/vanish
tag @e[type=minecraft:mannequin,tag=daisukes.ek_ok] remove daisukes.ek_ok
