# Com a tros que deixa de ser-ho (el mes vell d'una cua massa llarga, el de qui ha mort o ja no hi es, el final del
# modificador): ja no compta ni fa mal, s'encongeix en 4 ticks i seg/fade el treu
tag @s remove daisukes.sn_seg
tag @s remove daisukes.sn_fresh
tag @s remove daisukes.sn_armed
tag @s remove daisukes.sn_new
tag @s remove daisukes.sn_flash
tag @s remove daisukes.sn_orphan
tag @s add daisukes.sn_dying
scoreboard players set @s daisukes.sn_t 5
data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [0.495f, 0.495f, 0.495f], scale: [0.01f, 0.01f, 0.01f]}}
