# Ticks fins a la propera mirada: #wait_min + (0..#wait_spread)
execute store result score @s daisukes.gorgun run random value 0..100000
scoreboard players operation #spread daisukes.gorgun = #wait_spread daisukes.gorgun
scoreboard players add #spread daisukes.gorgun 1
scoreboard players operation @s daisukes.gorgun %= #spread daisukes.gorgun
scoreboard players operation @s daisukes.gorgun += #wait_min daisukes.gorgun
