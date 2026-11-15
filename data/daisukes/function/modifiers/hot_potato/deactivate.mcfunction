kill @e[type=item_display,tag=daisukes.potato2]
tag @a remove daisukes.potato2_holder
tag @e[tag=daisukes.potato2_holder] remove daisukes.potato2_holder
tag @e[tag=daisukes.potato2_next] remove daisukes.potato2_next
bossbar remove daisukes:potato
scoreboard objectives remove daisukes.potato2
scoreboard objectives remove daisukes.potato2_hit

# Per si la patata s'ha quedat en un chunk sense carregar (mon tancat amb el modificador actiu)
schedule function daisukes:modifiers/hot_potato/leftovers 30s
