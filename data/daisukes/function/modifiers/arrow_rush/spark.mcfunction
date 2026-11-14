# Particules cap on has premut (a terra), segons el tipus de pas
execute if score @s daisukes.rush_a matches 1 rotated ~ 0 positioned ^ ^0.2 ^0.9 run function daisukes:modifiers/arrow_rush/puff
execute if score @s daisukes.rush_a matches 2 rotated ~ 0 positioned ^0.9 ^0.2 ^ run function daisukes:modifiers/arrow_rush/puff
execute if score @s daisukes.rush_a matches 3 rotated ~ 0 positioned ^ ^0.2 ^-0.9 run function daisukes:modifiers/arrow_rush/puff
execute if score @s daisukes.rush_a matches 4 rotated ~ 0 positioned ^-0.9 ^0.2 ^ run function daisukes:modifiers/arrow_rush/puff
execute if score @s daisukes.rush_a matches 5..6 positioned ~ ~0.1 ~ run function daisukes:modifiers/arrow_rush/puff
execute if score @s daisukes.rush_a matches 7 anchored eyes positioned ^ ^ ^1.2 run particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.3 8
