# Un nivell mes avall, si encara en queden
scoreboard players remove #h daisukes.em 1
execute if score #h daisukes.em matches ..0 run return fail
execute if score #mode daisukes.em matches 0 positioned ~ ~-1 ~ run return run function daisukes:modifiers/ender_mobs/tp/scan
execute positioned ~ ~-1 ~ run return run function daisukes:modifiers/ender_mobs/tp/swim
