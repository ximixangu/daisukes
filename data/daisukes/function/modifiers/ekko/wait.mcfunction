# Com al jugador amb un eco esperant: compte enrere
scoreboard players remove @s daisukes.ek_t 1
execute if score @s daisukes.ek_t matches ..0 run return run function daisukes:modifiers/ekko/rewind

# Tic-tac un cop per segon els ultims #ticks segons
scoreboard players operation #r daisukes.ek = @s daisukes.ek_t
scoreboard players operation #r daisukes.ek %= #20 daisukes.ek
execute if score #r daisukes.ek matches 0 if score @s daisukes.ek_t <= #ticks_t daisukes.ek run function daisukes:modifiers/ekko/fx/tick

execute if score #clock daisukes.ek matches 0 run function daisukes:modifiers/ekko/echo/link
