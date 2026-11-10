scoreboard players set @s potato_timer 0

execute store result storage daisukes:data slot int 1 run random value 0..35

execute as @s run function daisukes:modifiers/cursed_potato/check_and_give with storage daisukes:data