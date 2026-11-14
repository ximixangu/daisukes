# Clic a una caixa (esquerre o dret): compta per a qui ha clicat
execute on attacker run tag @s add daisukes.rush_clicked
execute on target run tag @s add daisukes.rush_clicked
data remove entity @s attack
data remove entity @s interaction
