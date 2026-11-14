# Com a jugador mort o espectador que te barra: s'amaga (player la torna a ensenyar quan torna a jugar)
execute store result storage daisukes:heat tmp.id int 1 run scoreboard players get @s daisukes.heat_id
function daisukes:modifiers/overheat/bar/hide with storage daisukes:heat tmp
