# Un nivell mes avall, si encara en queden
scoreboard players remove #h daisukes.tp 1
execute if score #done daisukes.tp matches 0 if score #h daisukes.tp matches 1.. positioned ~ ~-1 ~ run return run function daisukes:util/teleport/scan
return fail
