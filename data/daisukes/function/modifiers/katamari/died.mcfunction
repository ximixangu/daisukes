# Com a jugador que ha mort des de l'ultim cop (ja ha reviscut): el katamari es desfa i torna a comencar. Amb #keep 1
# es queda la mida (i se li tornen a posar els atributs, per si s'han perdut en reviure)
scoreboard players reset @s daisukes.km_dead
execute if score #keep daisukes.km matches 1 run return run function daisukes:modifiers/katamari/size
scoreboard players set @s daisukes.km_mass 0
scoreboard players set @s daisukes.km_s 100
function daisukes:modifiers/katamari/size
