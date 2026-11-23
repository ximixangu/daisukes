# Torna 1 si aquest bloc es lliure: lloc buit a terra, aigua a l'aigua
execute if score #mode daisukes.em matches 0 if block ~ ~ ~ #daisukes:ender_mobs/open run return 1
execute if score #mode daisukes.em matches 1 if block ~ ~ ~ #daisukes:ender_mobs/water run return 1
return fail
