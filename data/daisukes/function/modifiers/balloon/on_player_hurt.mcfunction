# Recompensa de l'avancament balloon/player_hurt: com al jugador que ha rebut mal, als seus peus
advancement revoke @s only daisukes:balloon/player_hurt
execute if data storage daisukes:state {active: ["balloon"]} run function daisukes:modifiers/balloon/float
