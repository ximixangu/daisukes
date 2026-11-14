# junk.slot + 1 (despres de la 35, la 0)
execute store result score #junk_slot daisukes.math run data get storage daisukes:temp junk.slot
scoreboard players add #junk_slot daisukes.math 1
execute if score #junk_slot daisukes.math matches 36.. run scoreboard players set #junk_slot daisukes.math 0
execute store result storage daisukes:temp junk.slot int 1 run scoreboard players get #junk_slot daisukes.math
