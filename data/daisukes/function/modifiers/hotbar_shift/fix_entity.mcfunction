# Treu disfresses i còpies falses d'una entitat: marcs, suports d'armadura, allays, cavalls, llames, burros...
execute if items entity @s contents *[custom_data~{daisukes_shift:{}}] run function daisukes:modifiers/hotbar_shift/fix_nbt {src:"entity @s",path:"Item"}
execute if items entity @s weapon.* *[custom_data~{daisukes_shift:{}}] run function daisukes:modifiers/hotbar_shift/fix_equip
execute if items entity @s armor.* *[custom_data~{daisukes_shift:{}}] run function daisukes:modifiers/hotbar_shift/fix_equip
execute if items entity @s armor.body *[custom_data~{daisukes_shift:{}}] run function daisukes:modifiers/hotbar_shift/fix_equip
execute if items entity @s saddle *[custom_data~{daisukes_shift:{}}] run function daisukes:modifiers/hotbar_shift/fix_equip
execute if items entity @s horse.* *[custom_data~{daisukes_shift:{}}] run function daisukes:modifiers/hotbar_shift/fix_items {src:"entity @s"}
