# Com a jugador que encara no te mida (acaba de comencar el modificador o acaba d'entrar): mida normal. Si ja tenia
# massa (ha matat un mob gros abans del primer tick), se li queda. El seu segon (second) cau en un tick del rellotge
# diferent del dels altres (de 7 en 7), perque no comptin tots alhora
scoreboard players operation @s daisukes.km_ph = #ph daisukes.km
scoreboard players add #ph daisukes.km 7
scoreboard players operation #ph daisukes.km %= #20 daisukes.km
scoreboard players set @s daisukes.km_s 100
scoreboard players add @s daisukes.km_mass 0
scoreboard players set @s daisukes.km_cd 0
function daisukes:modifiers/katamari/size
