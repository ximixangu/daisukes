# Macro {id}. Com a jugador: la seva barra de calor, que nomes veu ell (si ja existeix, l'add falla i ja esta)
$bossbar add daisukes:heat_$(id) ""
$bossbar set daisukes:heat_$(id) players @s
$execute store result bossbar daisukes:heat_$(id) max run scoreboard players get #max daisukes.heat
