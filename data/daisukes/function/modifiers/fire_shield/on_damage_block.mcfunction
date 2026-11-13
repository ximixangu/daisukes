# Recompensa de l'avancament fire_shield/damage_block: com al jugador que ha bloquejat, als seus peus
advancement revoke @s only daisukes:fire_shield/damage_block
execute if data storage daisukes:state {active: ["fire_shield"]} at @s run function daisukes:modifiers/fire_shield/trigger_fire
