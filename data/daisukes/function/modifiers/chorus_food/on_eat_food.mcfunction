# Recompensa de l'avancament chorus_food/eat_food: com al jugador que acaba de menjar, als seus peus
advancement revoke @s only daisukes:chorus_food/eat_food
execute if data storage daisukes:state {active: ["chorus_food"]} at @s run function daisukes:util/teleport/chorus
