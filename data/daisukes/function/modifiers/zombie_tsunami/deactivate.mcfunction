execute as @e[type=minecraft:zombie,tag=daisukes.tsunami] run function daisukes:modifiers/zombie_tsunami/recede

function daisukes:util/in_worlds {cmd: "weather clear"}
function daisukes:util/in_worlds {cmd: "gamerule advance_weather true"}
