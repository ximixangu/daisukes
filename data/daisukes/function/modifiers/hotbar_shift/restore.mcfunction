# 1) Fora la còpia falsa (és a T; o a S si T era buida)
$execute if items entity @s hotbar.$(t) *[custom_data~{daisukes_shift:{j:1b}}] run item replace entity @s hotbar.$(t) with air
$execute if items entity @s hotbar.$(s) *[custom_data~{daisukes_shift:{j:1b}}] run item replace entity @s hotbar.$(s) with air
# 2) El que hi ha a S és el que tenia a la mà de veritat (encara que s'hagi gastat o transformat): torna a T
$execute if items entity @s hotbar.$(s) * unless items entity @s hotbar.$(t) * run function daisukes:modifiers/hotbar_shift/move {from:"hotbar.$(s)",to:"hotbar.$(t)"}
# 3) L'objecte de S, que estava guardat a part, torna al seu lloc
execute if data storage daisukes:shift e.item run function daisukes:modifiers/hotbar_shift/unstash with storage daisukes:shift e
