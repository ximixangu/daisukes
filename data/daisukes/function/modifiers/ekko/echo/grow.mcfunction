# Com a eco acabat de neixer: al segon tick ja es invisible, i es fa del tamany normal
scoreboard players remove @s daisukes.ek_t 1
execute if score @s daisukes.ek_t matches 1.. run return 0
attribute @s minecraft:scale base set 1
tag @s remove daisukes.ek_new
