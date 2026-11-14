# Recompensa de l'avancament daisukes:modifiers/heavy_blocks/place: aquest jugador acaba de posar un bloc sense res a sota (aire, aigua, herba...).
# Es torna a poder activar. El bloc es busca seguint on mira, i ha de ser del tipus que tenia a la ma (encara hi es)
# El bloc es busca al tick seguent: ara el servidor encara te la mirada d'abans del clic (si mous el ratoli
# de pressa, apuntaria a un altre lloc). Un marcador guarda que hi havia a cada ma
advancement revoke @s only daisukes:modifiers/heavy_blocks/place
summon minecraft:marker ~ ~ ~ {Tags: ["daisukes.heavy_look", "daisukes.heavy_new"]}
data modify entity @e[type=minecraft:marker,tag=daisukes.heavy_new,limit=1] data.main.block set from entity @s SelectedItem.id
data modify entity @e[type=minecraft:marker,tag=daisukes.heavy_new,limit=1] data.off.block set from entity @s equipment.offhand.id
tag @e[type=minecraft:marker,tag=daisukes.heavy_new] remove daisukes.heavy_new
