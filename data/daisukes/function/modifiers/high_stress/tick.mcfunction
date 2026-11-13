# Qui no esta estressat ha de poder disparar l'avancament (per si es va quedar donat d'una altra vegada,
# p. ex. si estava desconnectat quan es va activar)
execute as @a unless score @s daisukes.high_stress matches 1.. run advancement revoke @s only daisukes:high_stress/player_hurt

# Compte enrere dels estressats
execute as @a[scores={daisukes.high_stress=1..}] run function daisukes:modifiers/high_stress/countdown
