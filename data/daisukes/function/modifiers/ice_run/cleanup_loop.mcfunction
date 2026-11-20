data modify storage daisukes:ice_run pos set from storage daisukes:ice_run trail[0]
data remove storage daisukes:ice_run trail[0]
execute store result score #ok daisukes.ice_run run function daisukes:modifiers/ice_run/break_ice with storage daisukes:ice_run pos

# No carregat: es guarda ja vençut, perque es trenqui en quant el modificador torni a estar actiu
execute if score #ok daisukes.ice_run matches 0 store result storage daisukes:ice_run pos.t int 1 run scoreboard players get #now daisukes.ice_run
execute if score #ok daisukes.ice_run matches 0 run data modify storage daisukes:ice_run kept append from storage daisukes:ice_run pos

execute if data storage daisukes:ice_run trail[0] run function daisukes:modifiers/ice_run/cleanup_loop
