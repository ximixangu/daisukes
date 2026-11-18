# Boto Save del dialeg d'opcions: /trigger daisukes.menu set 1<mode><start><every><max><change><endfast><death>
# (8 xifres, la primera sempre 1; menu/settings/show). Es comprova cada xifra: si alguna no val, no es desa res
scoreboard players operation #v daisukes.math = #menu daisukes.math
scoreboard players remove #v daisukes.math 10000000

scoreboard players operation #s_death daisukes.math = #v daisukes.math
scoreboard players operation #s_death daisukes.math %= #10 daisukes.math
scoreboard players operation #v daisukes.math /= #10 daisukes.math
scoreboard players operation #s_endfast daisukes.math = #v daisukes.math
scoreboard players operation #s_endfast daisukes.math %= #10 daisukes.math
scoreboard players operation #v daisukes.math /= #10 daisukes.math
scoreboard players operation #s_change daisukes.math = #v daisukes.math
scoreboard players operation #s_change daisukes.math %= #10 daisukes.math
scoreboard players operation #v daisukes.math /= #10 daisukes.math
scoreboard players operation #s_max daisukes.math = #v daisukes.math
scoreboard players operation #s_max daisukes.math %= #10 daisukes.math
scoreboard players operation #v daisukes.math /= #10 daisukes.math
scoreboard players operation #s_every daisukes.math = #v daisukes.math
scoreboard players operation #s_every daisukes.math %= #10 daisukes.math
scoreboard players operation #v daisukes.math /= #10 daisukes.math
scoreboard players operation #s_start daisukes.math = #v daisukes.math
scoreboard players operation #s_start daisukes.math %= #10 daisukes.math
scoreboard players operation #v daisukes.math /= #10 daisukes.math
scoreboard players operation #s_mode daisukes.math = #v daisukes.math

scoreboard players set #valid daisukes.math 1
execute unless score #s_mode daisukes.math matches 1..3 run scoreboard players set #valid daisukes.math 0
execute unless score #s_start daisukes.math matches 1..5 run scoreboard players set #valid daisukes.math 0
execute unless score #s_every daisukes.math matches 1..6 run scoreboard players set #valid daisukes.math 0
execute if score #s_max daisukes.math matches 1 run scoreboard players set #valid daisukes.math 0
execute unless score #s_max daisukes.math matches 0..6 run scoreboard players set #valid daisukes.math 0
execute unless score #s_change daisukes.math matches 1..8 run scoreboard players set #valid daisukes.math 0
execute unless score #s_endfast daisukes.math matches 0..1 run scoreboard players set #valid daisukes.math 0
execute unless score #s_death daisukes.math matches 0..1 run scoreboard players set #valid daisukes.math 0
execute if score #valid daisukes.math matches 0 run data modify storage daisukes:menu notice set value {text: "✘ Those settings aren't valid, nothing was saved", color: "red"}
execute if score #valid daisukes.math matches 0 run function daisukes:menu/settings/show
execute if score #valid daisukes.math matches 0 run return 0

scoreboard players operation #mode daisukes.config = #s_mode daisukes.math
scoreboard players operation #start_count daisukes.config = #s_start daisukes.math
scoreboard players operation #every_choice daisukes.config = #s_every daisukes.math
scoreboard players operation #max_count daisukes.config = #s_max daisukes.math
scoreboard players operation #change_choice daisukes.config = #s_change daisukes.math
scoreboard players operation #end_fast daisukes.config = #s_endfast daisukes.math
scoreboard players operation #death_ends daisukes.config = #s_death daisukes.math

data modify storage daisukes:menu notice set value {text: "✔ Saved", color: "green"}
data modify storage daisukes:menu action set value " changed the settings: "
function daisukes:menu/settings/changed
