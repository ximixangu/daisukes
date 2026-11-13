# Remolí: avança 1/8 de volta cada tick
scoreboard players add #spin daisukes.icarus 1
execute if score #spin daisukes.icarus matches 8.. run scoreboard players set #spin daisukes.icarus 0

execute as @a run function daisukes:modifiers/icarus/check
