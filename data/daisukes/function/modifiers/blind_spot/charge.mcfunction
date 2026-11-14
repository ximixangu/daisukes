# Carrega apagada. Si no hi ha ningu a 32 blocs, desapareix (n'apareixen de noves on sigueu)
execute unless entity @e[type=minecraft:player,distance=..32] run return run kill @s
scoreboard players add @s daisukes.bspot 1
execute if score @s daisukes.bspot matches ..20 run return 0

# Tapada amb un bloc (o amb aigua) o sense terra a sota, queda desactivada
execute unless block ~ ~ ~ #daisukes:blind_spot/cell run return run function daisukes:modifiers/blind_spot/defuse
execute if block ~ ~-1 ~ #minecraft:replaceable run return run function daisukes:modifiers/blind_spot/defuse

# La trepitja un jugador o una criatura viva, o hi toca un projectil: s'encen
execute if entity @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator,distance=..0.7] run return run function daisukes:modifiers/blind_spot/light {fuse: 11}
execute if entity @e[type=!minecraft:player,type=!#daisukes:non_mob,distance=..0.7] run return run function daisukes:modifiers/blind_spot/light {fuse: 11}
execute if entity @e[type=#minecraft:impact_projectiles,distance=..1.8] run return run function daisukes:modifiers/blind_spot/light {fuse: 4}

# Es revela si algu va ajupit a 4 blocs o hi passa caminant a 1,5. Marcada, es veu 10 s
scoreboard players operation #m daisukes.bspot = @s daisukes.bspot
scoreboard players operation #m daisukes.bspot %= #20 daisukes.bspot
execute if entity @e[type=minecraft:player,gamemode=!spectator,distance=..4,predicate=daisukes:blind_spot/sneaking] run function daisukes:modifiers/blind_spot/spot
execute if entity @e[type=minecraft:player,gamemode=!spectator,distance=..1.5] run function daisukes:modifiers/blind_spot/spot
execute if score @s daisukes.bspot_fx matches 1.. run function daisukes:modifiers/blind_spot/shown
