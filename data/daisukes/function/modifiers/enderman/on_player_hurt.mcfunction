# Recompensa de l'avancament enderman/player_hurt: com al jugador que ha rebut mal, als seus peus
advancement revoke @s only daisukes:enderman/player_hurt
execute if data storage daisukes:state {active: ["enderman"]} at @s run function daisukes:util/teleport/chorus
