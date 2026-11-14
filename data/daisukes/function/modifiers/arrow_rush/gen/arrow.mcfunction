# Direccio i, si toca, tipus especial: 12 % per nivell a partir del 2. Es van sumant:
#  nivell 2: grossa | 3: grossa, es parteix i doble | 4: totes, mantenir inclosa
execute store result score #i daisukes.rush run random value 1..4
function daisukes:modifiers/arrow_rush/gen/dir
scoreboard players set #k daisukes.rush 0
scoreboard players operation #x daisukes.rush = #lv daisukes.rush
scoreboard players remove #x daisukes.rush 1
scoreboard players operation #x daisukes.rush *= #12 daisukes.rush
execute store result score #r daisukes.rush run random value 1..100
execute if score #r daisukes.rush <= #x daisukes.rush run function daisukes:modifiers/arrow_rush/gen/kind
execute if score #k daisukes.rush matches 0 run function daisukes:modifiers/arrow_rush/gen/normal with storage daisukes:rush arg
execute if score #k daisukes.rush matches 1 run function daisukes:modifiers/arrow_rush/gen/fat with storage daisukes:rush arg
execute if score #k daisukes.rush matches 2 run function daisukes:modifiers/arrow_rush/gen/split with storage daisukes:rush arg
execute if score #k daisukes.rush matches 3 run function daisukes:modifiers/arrow_rush/gen/pair
execute if score #k daisukes.rush matches 4 unless score #i daisukes.rush matches 4 run function daisukes:modifiers/arrow_rush/gen/hold with storage daisukes:rush arg
execute if score #k daisukes.rush matches 4 if score #i daisukes.rush matches 4 run function daisukes:modifiers/arrow_rush/gen/hold_right with storage daisukes:rush arg
