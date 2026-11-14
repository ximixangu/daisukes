# Segon bloc, que no sigui el primer (#tries2 intents). Si el troba, va a curse.b i #two queda a 1
function daisukes:modifiers/lava_roulette/pick
data modify storage daisukes:lava same set from storage daisukes:lava curse.a
execute if data storage daisukes:lava new store success score #two daisukes.lava run data modify storage daisukes:lava same set from storage daisukes:lava new
execute if score #two daisukes.lava matches 1 run return run data modify storage daisukes:lava curse.b set from storage daisukes:lava new

scoreboard players remove #tries2 daisukes.lava 1
execute if score #tries2 daisukes.lava matches 1.. run function daisukes:modifiers/lava_roulette/second
