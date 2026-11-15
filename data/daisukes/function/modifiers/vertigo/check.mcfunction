# Com a jugador. A terra, el compte torna a 0. A l'aire (saltant, caient, nedant, muntant...) suma un tick i,
# passats 1,5 s seguits (mes de 30 ticks), ceguesa; dura 2 s mes quan torna a terra
execute if predicate daisukes:on_ground run return run scoreboard players set @s daisukes.vertigo 0
scoreboard players add @s daisukes.vertigo 1
execute if score @s daisukes.vertigo matches 31.. run effect give @s minecraft:blindness 2 0 true
