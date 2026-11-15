# Com a un marc, una estaca o un allay
execute if items entity @s contents *[minecraft:custom_data~{daisukes_anchor:{}}] run item modify entity @s contents daisukes:anchor/unmark
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{daisukes_anchor:{}}] run item modify entity @s weapon.mainhand daisukes:anchor/unmark
execute if items entity @s weapon.offhand *[minecraft:custom_data~{daisukes_anchor:{}}] run item modify entity @s weapon.offhand daisukes:anchor/unmark
execute if items entity @s armor.head *[minecraft:custom_data~{daisukes_anchor:{}}] run item modify entity @s armor.head daisukes:anchor/unmark
execute if items entity @s armor.chest *[minecraft:custom_data~{daisukes_anchor:{}}] run item modify entity @s armor.chest daisukes:anchor/unmark
execute if items entity @s armor.legs *[minecraft:custom_data~{daisukes_anchor:{}}] run item modify entity @s armor.legs daisukes:anchor/unmark
execute if items entity @s armor.feet *[minecraft:custom_data~{daisukes_anchor:{}}] run item modify entity @s armor.feet daisukes:anchor/unmark
