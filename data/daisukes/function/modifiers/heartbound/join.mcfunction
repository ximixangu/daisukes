# Primer cop que el veiem: un numero, i el primer creaking als 8 s (si sou mes, 2 s despres de l'anterior)
tag @s remove daisukes.heart_bound
scoreboard players add #next daisukes.heart 1
scoreboard players operation @s daisukes.heart = #next daisukes.heart
scoreboard players operation @s daisukes.heart_t = #next daisukes.heart
scoreboard players operation @s daisukes.heart_t *= #40 daisukes.heart
scoreboard players add @s daisukes.heart_t 120
scoreboard players operation @s daisukes.heart_l = #now daisukes.heart
