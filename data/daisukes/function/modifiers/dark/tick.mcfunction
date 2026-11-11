execute as @a at @s run function daisukes:modifiers/dark/check
execute as @a[tag=darken] run scoreboard players add @s dark_timer 1
execute as @a[tag=!darken] run scoreboard players set @s dark_timer 0