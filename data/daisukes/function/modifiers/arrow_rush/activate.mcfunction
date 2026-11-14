# Arrow Rush: sequencies (fletxes, salt, ajupir-se i clic) que s'han de teclejar abans que s'acabi la barra
#  rush: ticks que queden de la sequencia (>0 jugant, <0 ensenyant la fallada) i valors globals (#..., #lv es el nivell)
#  rush_tm: temps total | rush_a: entrada que toca (1 amunt, 2 esquerra, 3 avall, 4 dreta, 5 salt, 6 ajupir, 7 clic)
#  rush_k: tipus de pas (0 normal, 1 grossa, 2 es parteix, 3 doble, 4 mantenir) | rush_n: progres del pas
#  rush_id: barra i dades de cada jugador (i la seva caixa de clic) | rush_d, rush_l: morts i sortides (treuen la sequencia, sense mal)
scoreboard objectives add daisukes.rush dummy
scoreboard objectives add daisukes.rush_tm dummy
scoreboard objectives add daisukes.rush_a dummy
scoreboard objectives add daisukes.rush_k dummy
scoreboard objectives add daisukes.rush_n dummy
scoreboard objectives add daisukes.rush_id dummy
scoreboard objectives add daisukes.rush_d deathCount
scoreboard objectives add daisukes.rush_l minecraft.custom:minecraft.leave_game
scoreboard players set #2 daisukes.rush 2
scoreboard players set #4 daisukes.rush 4
scoreboard players set #12 daisukes.rush 12
scoreboard players set #600 daisukes.rush 600

# Rellotge de l'entrada, compte enrere de la ronda (no compta fins a l'escalfament), descans (ticks) i barres creades
scoreboard players set #clock daisukes.rush 0
scoreboard players set #next daisukes.rush 1000000
scoreboard players set #rest daisukes.rush 120
scoreboard players set #ids daisukes.rush 0
