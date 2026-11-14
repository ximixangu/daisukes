kill @e[type=block_display,tag=daisukes.hush_mouth]
tag @a remove daisukes.hush_caught
bossbar remove daisukes:hush
scoreboard objectives remove daisukes.hush
scoreboard objectives remove daisukes.hush_still
scoreboard objectives remove daisukes.hush_walk
scoreboard objectives remove daisukes.hush_sprint
scoreboard objectives remove daisukes.hush_jump
scoreboard objectives remove daisukes.hush_hit

# Per si una boca ha quedat en un chunk sense carregar (mon tancat amb el modificador actiu)
schedule function daisukes:modifiers/hush/leftovers 30s
