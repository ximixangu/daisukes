# Algun jugador toca el raig en aquest punt. Si encara carrega, no s'activara mentre hi sigui; si ja es actiu,
# el sacseja
execute if score #mode daisukes.oc matches 1 run return run scoreboard players set #hold daisukes.oc 1
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=minecraft:player,dx=0,dy=0,dz=0,gamemode=!spectator,gamemode=!creative,tag=!daisukes.oc_zapped] positioned ~0.5 ~0.5 ~0.5 run function daisukes:modifiers/overcharge/beam/zap
