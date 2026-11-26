# Com al jugador que acaba de premer el Shift
tag @s add daisukes.ek_held
# Ja te un eco esperant, o encara no en pot deixar cap (#cooldown)
execute if score @s daisukes.ek_t matches 1.. run return 0
execute if score @s daisukes.ek_cd matches 1.. run return 0
function daisukes:modifiers/ekko/echo/make
