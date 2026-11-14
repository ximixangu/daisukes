# Com a marker temporal, als peus del jugador. Un punt en una direccio i a una distancia a l'atzar (1-6 blocs;
# mes a prop, mes densitat), i mira la columna (field_at). Repeteix #n cops i desapareix
execute store result entity @s Rotation[0] float 1 run random value 0..359
execute store result score #d daisukes.lava run random value 1..6
execute if score #d daisukes.lava matches 1 rotated as @s positioned ^ ^ ^1 run function daisukes:modifiers/lava_roulette/field_at with storage daisukes:lava curse
execute if score #d daisukes.lava matches 2 rotated as @s positioned ^ ^ ^2 run function daisukes:modifiers/lava_roulette/field_at with storage daisukes:lava curse
execute if score #d daisukes.lava matches 3 rotated as @s positioned ^ ^ ^3 run function daisukes:modifiers/lava_roulette/field_at with storage daisukes:lava curse
execute if score #d daisukes.lava matches 4 rotated as @s positioned ^ ^ ^4 run function daisukes:modifiers/lava_roulette/field_at with storage daisukes:lava curse
execute if score #d daisukes.lava matches 5 rotated as @s positioned ^ ^ ^5 run function daisukes:modifiers/lava_roulette/field_at with storage daisukes:lava curse
execute if score #d daisukes.lava matches 6 rotated as @s positioned ^ ^ ^6 run function daisukes:modifiers/lava_roulette/field_at with storage daisukes:lava curse

scoreboard players remove #n daisukes.lava 1
execute if score #n daisukes.lava matches 1.. run return run function daisukes:modifiers/lava_roulette/spots
kill @s
