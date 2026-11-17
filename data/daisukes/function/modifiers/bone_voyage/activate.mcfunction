scoreboard objectives add daisukes.bone_voyage dummy
scoreboard objectives add daisukes.bone_voyage_add dummy

# Ajustos (es poden canviar aquí):
#   #interval -> el que ha d'acumular cada jugador per intentar fer sortir un esquelet.
#                Cada tick suma 1..3 (de mitjana 2): 100 = uns 50 ticks (~2,5 s).
#   #max      -> màxim d'esquelets del modificador a menys de 48 blocs d'un jugador.
scoreboard players set #interval daisukes.bone_voyage 400
scoreboard players set #max daisukes.bone_voyage 4

function daisukes:util/in_worlds {cmd: "weather thunder"}
function daisukes:util/in_worlds {cmd: "gamerule advance_weather false"}
