# Macro {n: punts, fx: efecte}. Com a jugador, als seus peus: n punts a l'atzar al voltant (fins a 6 blocs).
# On hi ha un bloc de lava, l'efecte fx/<fx> (escalfor, brases o vapor). Ho fa un marker temporal (spots)
$scoreboard players set #n daisukes.lava $(n)
$data modify storage daisukes:lava curse.fx set value "$(fx)"
execute summon minecraft:marker run function daisukes:modifiers/lava_roulette/spots
