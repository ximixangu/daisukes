# El rastre va per ordre de temps: es trenquen els primers fins que en surt un que encara no toca
execute store result score #t daisukes.ice_run run data get storage daisukes:ice_run trail[0].t
execute if score #t daisukes.ice_run > #now daisukes.ice_run run return 0

data modify storage daisukes:ice_run pos set from storage daisukes:ice_run trail[0]
data remove storage daisukes:ice_run trail[0]
execute store result score #ok daisukes.ice_run run function daisukes:modifiers/ice_run/break_ice with storage daisukes:ice_run pos

# Zona no carregada (p. ex. el jugador ha mort i ha reaparegut lluny): es torna a provar d'aqui a 1 s
execute if score #ok daisukes.ice_run matches 0 run function daisukes:modifiers/ice_run/retry_later

execute if data storage daisukes:ice_run trail[0] run function daisukes:modifiers/ice_run/break_due
