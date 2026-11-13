# Recompensa de l'avancament high_stress/player_hurt: com al jugador que ha rebut mal.
# No es revoca aqui: mentre estigui estressat no torna a saltar (ho revoca restore, o el tick si no esta estressat)
execute if data storage daisukes:state {active: ["high_stress"]} run function daisukes:modifiers/high_stress/stress
