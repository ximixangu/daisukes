# (si es per posar, un marcador al punt on topa: si es una bastida, cal saber si s'ha clicat a sobre)
execute if score #mode daisukes.earth matches 1 run summon minecraft:marker ~ ~ ~ {Tags: ["daisukes.earth", "daisukes.earth_hit"]}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function daisukes:modifiers/living_earth/aim_cell
