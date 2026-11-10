scoreboard players set @s daisukes.item_drop 0

execute as @a[gamemode=!spectator] at @s if data entity @s SelectedItem run function daisukes:modifiers/item_drop/drop