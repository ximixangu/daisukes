data modify storage daisukes:glass_run pos set from storage daisukes:glass_run trail[0]
data remove storage daisukes:glass_run trail[0]
execute store result score #ok daisukes.glass_run run function daisukes:modifiers/glass_run/break_ice with storage daisukes:glass_run pos

# No carregat: es guarda ja vençut, perque es trenqui en quant el modificador torni a estar actiu
execute if score #ok daisukes.glass_run matches 0 store result storage daisukes:glass_run pos.t int 1 run scoreboard players get #now daisukes.glass_run
execute if score #ok daisukes.glass_run matches 0 run data modify storage daisukes:glass_run kept append from storage daisukes:glass_run pos

execute if data storage daisukes:glass_run trail[0] run function daisukes:modifiers/glass_run/cleanup_loop
