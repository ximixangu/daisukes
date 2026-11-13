# El rastre va per ordre de temps: es trenquen els primers fins que en surt un que encara no toca
execute store result score #t daisukes.glass_run run data get storage daisukes:glass_run trail[0].t
execute if score #t daisukes.glass_run > #now daisukes.glass_run run return 0

data modify storage daisukes:glass_run pos set from storage daisukes:glass_run trail[0]
data remove storage daisukes:glass_run trail[0]
execute store result score #ok daisukes.glass_run run function daisukes:modifiers/glass_run/break_ice with storage daisukes:glass_run pos

# Zona no carregada (p. ex. el jugador ha mort i ha reaparegut lluny): es torna a provar d'aqui a 1 s
execute if score #ok daisukes.glass_run matches 0 run function daisukes:modifiers/glass_run/retry_later

execute if data storage daisukes:glass_run trail[0] run function daisukes:modifiers/glass_run/break_due
