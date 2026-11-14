kill @e[type=item_display,tag=daisukes.potato]
tag @a remove daisukes.potato_holder
tag @e[tag=daisukes.potato_holder] remove daisukes.potato_holder
tag @e[tag=daisukes.potato_next] remove daisukes.potato_next
bossbar remove daisukes:potato
scoreboard objectives remove daisukes.potato
scoreboard objectives remove daisukes.potato_hit

# Per si la patata s'ha quedat en un chunk sense carregar (mon tancat amb el modificador actiu)
schedule function daisukes:modifiers/hot_potato/leftovers 30s
