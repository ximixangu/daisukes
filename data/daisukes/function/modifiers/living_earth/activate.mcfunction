# Living Earth: tot el que trenques torna al cap de 4 s, negre: el mateix bloc (t'hi pots posar a sobre) amb una capa
# negra al damunt, amb la seva forma. Els negres costen el doble de trencar (menys les fulles) i no donen res; si els
# trenques, tornen negres. Torxes, escales, rails i fanals tornen nomes com una ombra negra (no fa llum ni es pot fer
# servir). El que poses es posa vermell i torna a l'inventari als 2 s. Les coses que es fan servir (taules, forns,
# cofres, portes...) ni tornen negres ni tornen a l'inventari. Quan s'acaba, els negres desapareixen d'un en un.
#  daisukes.earth: valors globals i numero de cada jugador   daisukes.earth_t: temps (forats, blocs posats) i si el cursor mira un bloc
#  daisukes.earth_v: quines propietats te el bloc de cada negre   daisukes.earth_q: ordre en que es van trencar
# Si encara desapareixien els negres d'una partida d'abans: fora tots de cop
execute if data storage daisukes:earth {fading: 1b} run function daisukes:modifiers/living_earth/fade_all
scoreboard objectives add daisukes.earth dummy
scoreboard objectives add daisukes.earth_t dummy
scoreboard objectives add daisukes.earth_v dummy
scoreboard objectives add daisukes.earth_q dummy
scoreboard players set #16 daisukes.earth 16
scoreboard players set #256 daisukes.earth 256
scoreboard players set #players daisukes.earth 256
scoreboard players set #next daisukes.earth 0
scoreboard players set #ord daisukes.earth 0
scoreboard players set #holes daisukes.earth 0
scoreboard players set #sec daisukes.earth 0
# La caixa forta (la copia del bloc que mira cada jugador), carregada mentre dura
execute in minecraft:overworld run forceload add 29999008 29999008

# Entrada: la terra es desperta al voltant de cadascu
execute as @a at @s run function daisukes:modifiers/living_earth/intro
