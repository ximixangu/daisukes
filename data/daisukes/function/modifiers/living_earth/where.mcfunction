# Com al jugador que acaba de posar un bloc: on es, segons l'avenc daisukes:living_earth/where. Si no se sap (v), res a daisukes:earth w
data remove storage daisukes:earth w
execute unless entity @s[advancements={daisukes:living_earth/where={v=true}}] run return 0
scoreboard players set #qx daisukes.earth 0
execute if entity @s[advancements={daisukes:living_earth/where={x1=true}}] run scoreboard players add #qx daisukes.earth 1
execute if entity @s[advancements={daisukes:living_earth/where={x2=true}}] run scoreboard players add #qx daisukes.earth 2
execute if entity @s[advancements={daisukes:living_earth/where={x4=true}}] run scoreboard players add #qx daisukes.earth 4
execute if entity @s[advancements={daisukes:living_earth/where={x8=true}}] run scoreboard players add #qx daisukes.earth 8
execute if entity @s[advancements={daisukes:living_earth/where={x16=true}}] run scoreboard players add #qx daisukes.earth 16
execute if entity @s[advancements={daisukes:living_earth/where={x32=true}}] run scoreboard players add #qx daisukes.earth 32
execute if entity @s[advancements={daisukes:living_earth/where={x64=true}}] run scoreboard players add #qx daisukes.earth 64
execute if entity @s[advancements={daisukes:living_earth/where={x128=true}}] run scoreboard players add #qx daisukes.earth 128
scoreboard players set #qz daisukes.earth 0
execute if entity @s[advancements={daisukes:living_earth/where={z1=true}}] run scoreboard players add #qz daisukes.earth 1
execute if entity @s[advancements={daisukes:living_earth/where={z2=true}}] run scoreboard players add #qz daisukes.earth 2
execute if entity @s[advancements={daisukes:living_earth/where={z4=true}}] run scoreboard players add #qz daisukes.earth 4
execute if entity @s[advancements={daisukes:living_earth/where={z8=true}}] run scoreboard players add #qz daisukes.earth 8
execute if entity @s[advancements={daisukes:living_earth/where={z16=true}}] run scoreboard players add #qz daisukes.earth 16
execute if entity @s[advancements={daisukes:living_earth/where={z32=true}}] run scoreboard players add #qz daisukes.earth 32
execute if entity @s[advancements={daisukes:living_earth/where={z64=true}}] run scoreboard players add #qz daisukes.earth 64
execute if entity @s[advancements={daisukes:living_earth/where={z128=true}}] run scoreboard players add #qz daisukes.earth 128
scoreboard players set #qy daisukes.earth 0
execute if entity @s[advancements={daisukes:living_earth/where={y1=true}}] run scoreboard players add #qy daisukes.earth 1
execute if entity @s[advancements={daisukes:living_earth/where={y2=true}}] run scoreboard players add #qy daisukes.earth 2
execute if entity @s[advancements={daisukes:living_earth/where={y4=true}}] run scoreboard players add #qy daisukes.earth 4
execute if entity @s[advancements={daisukes:living_earth/where={y8=true}}] run scoreboard players add #qy daisukes.earth 8
execute if entity @s[advancements={daisukes:living_earth/where={y16=true}}] run scoreboard players add #qy daisukes.earth 16
execute if entity @s[advancements={daisukes:living_earth/where={y32=true}}] run scoreboard players add #qy daisukes.earth 32
execute if entity @s[advancements={daisukes:living_earth/where={y64=true}}] run scoreboard players add #qy daisukes.earth 64
execute if entity @s[advancements={daisukes:living_earth/where={y128=true}}] run scoreboard players add #qy daisukes.earth 128
execute if entity @s[advancements={daisukes:living_earth/where={y256=true}}] run scoreboard players add #qy daisukes.earth 256
# x i z (tram q): de q/32 a (q+1)/32 blocs, i el mig del tram endavant i enrere
scoreboard players operation #t daisukes.earth = #qx daisukes.earth
scoreboard players operation #t daisukes.earth += #qx daisukes.earth
scoreboard players add #t daisukes.earth 1
execute store result storage daisukes:earth w.px double 0.015625 run scoreboard players get #t daisukes.earth
execute store result storage daisukes:earth w.mx double -0.015625 run scoreboard players get #t daisukes.earth
execute store result storage daisukes:earth w.x0 double 0.03125 run scoreboard players get #qx daisukes.earth
scoreboard players add #qx daisukes.earth 1
execute store result storage daisukes:earth w.x1 double 0.03125 run scoreboard players get #qx daisukes.earth
scoreboard players operation #t daisukes.earth = #qz daisukes.earth
scoreboard players operation #t daisukes.earth += #qz daisukes.earth
scoreboard players add #t daisukes.earth 1
execute store result storage daisukes:earth w.pz double 0.015625 run scoreboard players get #t daisukes.earth
execute store result storage daisukes:earth w.mz double -0.015625 run scoreboard players get #t daisukes.earth
execute store result storage daisukes:earth w.z0 double 0.03125 run scoreboard players get #qz daisukes.earth
scoreboard players add #qz daisukes.earth 1
execute store result storage daisukes:earth w.z1 double 0.03125 run scoreboard players get #qz daisukes.earth
# y: el centre del bloc
scoreboard players operation #t daisukes.earth = #qy daisukes.earth
scoreboard players operation #t daisukes.earth += #qy daisukes.earth
scoreboard players remove #t daisukes.earth 127
execute store result storage daisukes:earth w.y double 0.5 run scoreboard players get #t daisukes.earth
