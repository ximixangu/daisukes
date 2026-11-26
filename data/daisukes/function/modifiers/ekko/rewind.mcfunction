# Com al jugador quan s'acaba el temps del seu eco: torna on era, amb la vida que tenia, i l'eco desapareix
execute store result storage daisukes:ekko key.id int 1 run scoreboard players get @s daisukes.ek_id
data remove storage daisukes:ekko cur
function daisukes:modifiers/ekko/echo/load with storage daisukes:ekko key
# Sense dades (no hauria de passar): nomes s'esvaeix l'eco
execute unless data storage daisukes:ekko cur.dim run return run function daisukes:modifiers/ekko/cancel
function daisukes:modifiers/ekko/echo/forget with storage daisukes:ekko key

# D'aqui marxa en guspires blaves. La resta, ja des d'on ha arribat (~ ~ ~ encara seria on era)
particle minecraft:dust{color:[0.33,0.33,1.0],scale:1.0} ~ ~0.9 ~ 0.3 0.5 0.3 0 16
function daisukes:modifiers/ekko/echo/jump with storage daisukes:ekko cur
execute at @s run function daisukes:modifiers/ekko/back
