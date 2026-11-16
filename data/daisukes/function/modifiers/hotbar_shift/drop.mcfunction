# Objecte a terra amb marca: el fals desapareix i el disfressat torna a ser com era
execute if items entity @s contents *[custom_data~{daisukes_shift:{j:1b}}] run return run kill @s
function daisukes:modifiers/hotbar_shift/fix_nbt {src:"entity @s",path:"Item"}
