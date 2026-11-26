# Com a mob que toca un jugador gran (daisukes.km_me): si te tanta vida o menys com la que aixafa el jugador
# (daisukes.km_hp) i no es de ningu (domesticat, amb nom, lligat) ni intocable (invulnerable, o amb Resistencia V com
# la cort del Rei), se l'emporta: el mob mor com si l'hagues matat ell (deixa el boti i l'experiencia, i compta com a
# mort per a la massa)
execute if predicate daisukes:katamari/shielded run return 0
data modify storage daisukes:katamari mob set from entity @s
execute if data storage daisukes:katamari mob.Owner run return 0
execute if data storage daisukes:katamari mob.CustomName run return 0
execute if data storage daisukes:katamari mob.leash run return 0
execute if data storage daisukes:katamari mob{Invulnerable: 1b} run return 0
execute store result score #hp daisukes.km run data get storage daisukes:katamari mob.Health
execute if score #hp daisukes.km > @a[tag=daisukes.km_me,limit=1] daisukes.km_hp run return 0
execute at @s run playsound minecraft:entity.item.pickup neutral @a ~ ~ ~ 0.8 0.6
damage @s 1000 minecraft:player_attack by @a[tag=daisukes.km_me,limit=1]
