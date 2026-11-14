# Fusible acabat: les pells (ja inflades i blanques) desapareixen i el tipus castiga el seu amo
scoreboard players operation #id daisukes.orb = @s daisukes.orb_id
execute as @e[type=minecraft:item_display,tag=daisukes.orb_skin] if score @s daisukes.orb_id = #id daisukes.orb run kill @s
execute if entity @s[tag=daisukes.orb_volt] at @s positioned ~ ~0.4 ~ run function daisukes:modifiers/orbital/volt/boom
execute if entity @s[tag=daisukes.orb_wood] at @s positioned ~ ~0.4 ~ run function daisukes:modifiers/orbital/wood/boom
execute if entity @s[tag=daisukes.orb_slime] at @s positioned ~ ~0.4 ~ run function daisukes:modifiers/orbital/slime/boom
execute if entity @s[tag=daisukes.orb_slimelet] at @s positioned ~ ~0.4 ~ run function daisukes:modifiers/orbital/slime/boom
execute if entity @s[tag=daisukes.orb_ender] at @s positioned ~ ~0.4 ~ run function daisukes:modifiers/orbital/ender/boom
execute if entity @s[tag=daisukes.orb_copper] at @s positioned ~ ~0.4 ~ run function daisukes:modifiers/orbital/copper/boom
kill @s
