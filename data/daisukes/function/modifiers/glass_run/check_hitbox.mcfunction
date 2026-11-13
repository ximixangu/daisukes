# Blocs que hi ha sota la hitbox del jugador (0.6 x 0.6): un per cada cantonada, un bloc per sota dels peus.
# El joc aguanta el jugador mentre la hitbox toqui el bloc per mes de 0.0000001 (fent shift a la vora),
# per aixo les cantonades es miren a 0.00000001 de la vora: es detecta el bloc que l'aguanta, i
# un bloc del costat que nomes toca la cara (sense trepitjar-lo) no compta.
execute positioned ~0.29999999 ~-0.9 ~0.29999999 unless block ~ ~ ~ #daisukes:glass_run/non_convertible run function daisukes:modifiers/glass_run/freeze
execute positioned ~-0.29999999 ~-0.9 ~0.29999999 unless block ~ ~ ~ #daisukes:glass_run/non_convertible run function daisukes:modifiers/glass_run/freeze
execute positioned ~0.29999999 ~-0.9 ~-0.29999999 unless block ~ ~ ~ #daisukes:glass_run/non_convertible run function daisukes:modifiers/glass_run/freeze
execute positioned ~-0.29999999 ~-0.9 ~-0.29999999 unless block ~ ~ ~ #daisukes:glass_run/non_convertible run function daisukes:modifiers/glass_run/freeze
