# Com a mob: un marker nou hi puja a sobre (si ja porta algu que no deixa lloc, el marker queda sol i check el treu)
tag @s add daisukes.creeper_host
tag @s add daisukes.creeper_host_now
execute at @s summon minecraft:marker run function daisukes:modifiers/mini_creeper/attach
tag @s remove daisukes.creeper_host_now
