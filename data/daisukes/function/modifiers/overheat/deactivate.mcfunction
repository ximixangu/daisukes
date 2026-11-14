# Barres de dalt (daisukes:heat_1 ... _#ids) i marcadors. No queda res als jugadors: ni efectes ni foc de debo
execute if score #ids daisukes.heat matches 1.. run function daisukes:modifiers/overheat/bar/remove_all
scoreboard objectives remove daisukes.heat
scoreboard objectives remove daisukes.heat_b
scoreboard objectives remove daisukes.heat_w
scoreboard objectives remove daisukes.heat_v
scoreboard objectives remove daisukes.heat_id
scoreboard objectives remove daisukes.heat_d
data remove storage daisukes:heat tmp
