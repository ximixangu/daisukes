# Com al Rei, cada segon. Sense corona (o d'una activacio anterior, o una cria d'un slime Rei, que hereta les
# etiquetes pero no la corona) deixa de ser-ho. Si no, continua brillant
execute unless score @s daisukes.king_id matches 1.. run return run function daisukes:modifiers/king/ruler/uncrown
execute unless predicate daisukes:king/crowned run return run function daisukes:modifiers/king/ruler/uncrown
effect give @s minecraft:glowing 2 0 true
