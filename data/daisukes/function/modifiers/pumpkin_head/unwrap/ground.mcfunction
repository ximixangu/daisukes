# Com a carbassa a terra (cau quan mors; en creatiu tambe es pot llencar): es converteix en el que guardava, aqui
# mateix, com hauria caigut el casc. Si no guardava res, desapareix
execute unless data entity @s Item.components."minecraft:custom_data".daisukes_pumpkin.helmet run return run kill @s
data modify entity @s Item set from entity @s Item.components."minecraft:custom_data".daisukes_pumpkin.helmet
