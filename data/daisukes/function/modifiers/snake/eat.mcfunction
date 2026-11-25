# Recompensa de l'avancament snake/eat: com al jugador que acaba de menjar (qualsevol cosa amb el component food), als
# seus peus. Es revoca sol a cada cop; si Snake no es actiu, no fa res mes
advancement revoke @s only daisukes:snake/eat
execute if data storage daisukes:state {active: ["snake"]} run function daisukes:modifiers/snake/grow
