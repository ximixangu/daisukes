# Com a cada jugador connectat quan s'acaba, on es: torna a la mida normal, desinflant-se. Si en aquell moment es a
# l'aire, conserva la caiguda segura de la seva mida fins que toqui a terra (landed), per no fer-se mal de cop
execute unless score @s daisukes.km_s matches 101.. run return run function daisukes:modifiers/katamari/attr/clear
playsound minecraft:entity.puffer_fish.blow_out player @a ~ ~ ~ 0.8 0.8
execute unless predicate daisukes:katamari/on_ground run function daisukes:modifiers/katamari/grace
function daisukes:modifiers/katamari/attr/clear
