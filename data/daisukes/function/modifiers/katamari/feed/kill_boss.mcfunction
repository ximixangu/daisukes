# Recompensa de l'avancament katamari/kill_boss: com al jugador que acaba de matar un cap (tag daisukes:katamari/boss),
# a mes dels #kill de sempre. Es revoca sol; si Katamari no es actiu, no fa res mes
advancement revoke @s only daisukes:katamari/kill_boss
execute if data storage daisukes:state {active: ["katamari"]} run scoreboard players operation @s daisukes.km_mass += #kill_boss daisukes.km
