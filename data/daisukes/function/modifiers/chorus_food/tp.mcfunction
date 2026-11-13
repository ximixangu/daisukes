# Com a jugador que acaba de menjar, als seus peus. Salta a un lloc a l'atzar a prop, com la fruita de chorus
# (util/teleport): no el treu de la cova on es ni el deixa al sostre del Nether.
# Primer entre 4 i 16 blocs; si no hi ha lloc (un tunel estret...), mes a prop, entre 2 i 6
function daisukes:util/teleport/random {near: 4, far: 16}
execute if score #done daisukes.tp matches 0 run function daisukes:util/teleport/random {near: 2, far: 6}
execute if score #done daisukes.tp matches 0 run return fail

# So on era (~ ~ ~ encara es el lloc d'on ha sortit) i on ha arribat
playsound minecraft:item.chorus_fruit.teleport player @a ~ ~ ~ 1 1
execute at @s run playsound minecraft:item.chorus_fruit.teleport player @a ~ ~ ~ 1 1
