function daisukes:util/in_worlds {cmd: "weather clear"}
function daisukes:util/in_worlds {cmd: "gamerule advance_weather true"}

# Fora els esquelets del modificador
kill @e[type=minecraft:skeleton,tag=daisukes.voyage_skeleton]

scoreboard objectives remove daisukes.bone_voyage
scoreboard objectives remove daisukes.bone_voyage_add
