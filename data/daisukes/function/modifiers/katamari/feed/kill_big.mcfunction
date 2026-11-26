# Recompensa de l'avancament katamari/kill_big: com al jugador que acaba de matar un mob gros (tag
# daisukes:katamari/big), a mes dels #kill de sempre. Es revoca sol; si Katamari no es actiu, no fa res mes
advancement revoke @s only daisukes:katamari/kill_big
execute if data storage daisukes:state {active: ["katamari"]} run scoreboard players operation @s daisukes.km_mass += #kill_big daisukes.km
