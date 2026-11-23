# Com a mob vigilat al que toca un salt a l'atzar. No en fan: els no hostils (amb #random_all 0), els que van
# muntats (un aldea en una vagoneta...), els lligats amb una corda, les mascotes, i els aldeans i comerciants amb
# un jugador a 5 blocs (pot estar comerciant) o adormits. Els que porten algu a sobre, tampoc (blink)
execute if score #random_all daisukes.em matches 0 unless entity @s[type=#daisukes:ender_mobs/hostile] run return fail
execute if predicate daisukes:ender_mobs/riding run return fail
execute if function daisukes:modifiers/ender_mobs/held run return fail
execute if entity @s[type=#daisukes:ender_mobs/merchants] if entity @a[distance=..5] run return fail
execute if entity @s[type=minecraft:villager] if data entity @s sleeping_pos run return fail
scoreboard players set #force daisukes.em 0
function daisukes:modifiers/ender_mobs/blink
