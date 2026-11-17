# Com al jugador que acaba de posar un bloc: on es, segons l'avenc daisukes:modifiers/heavy_blocks/where. Si no se sap (v), res a daisukes:heavy w
data remove storage daisukes:heavy w
execute unless entity @s[advancements={daisukes:modifiers/heavy_blocks/where={v=true}}] run return 0
scoreboard players set #qx daisukes.heavy 0
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={x1=true}}] run scoreboard players add #qx daisukes.heavy 1
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={x2=true}}] run scoreboard players add #qx daisukes.heavy 2
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={x4=true}}] run scoreboard players add #qx daisukes.heavy 4
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={x8=true}}] run scoreboard players add #qx daisukes.heavy 8
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={x16=true}}] run scoreboard players add #qx daisukes.heavy 16
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={x32=true}}] run scoreboard players add #qx daisukes.heavy 32
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={x64=true}}] run scoreboard players add #qx daisukes.heavy 64
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={x128=true}}] run scoreboard players add #qx daisukes.heavy 128
scoreboard players set #qz daisukes.heavy 0
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={z1=true}}] run scoreboard players add #qz daisukes.heavy 1
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={z2=true}}] run scoreboard players add #qz daisukes.heavy 2
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={z4=true}}] run scoreboard players add #qz daisukes.heavy 4
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={z8=true}}] run scoreboard players add #qz daisukes.heavy 8
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={z16=true}}] run scoreboard players add #qz daisukes.heavy 16
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={z32=true}}] run scoreboard players add #qz daisukes.heavy 32
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={z64=true}}] run scoreboard players add #qz daisukes.heavy 64
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={z128=true}}] run scoreboard players add #qz daisukes.heavy 128
scoreboard players set #qy daisukes.heavy 0
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={y1=true}}] run scoreboard players add #qy daisukes.heavy 1
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={y2=true}}] run scoreboard players add #qy daisukes.heavy 2
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={y4=true}}] run scoreboard players add #qy daisukes.heavy 4
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={y8=true}}] run scoreboard players add #qy daisukes.heavy 8
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={y16=true}}] run scoreboard players add #qy daisukes.heavy 16
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={y32=true}}] run scoreboard players add #qy daisukes.heavy 32
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={y64=true}}] run scoreboard players add #qy daisukes.heavy 64
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={y128=true}}] run scoreboard players add #qy daisukes.heavy 128
execute if entity @s[advancements={daisukes:modifiers/heavy_blocks/where={y256=true}}] run scoreboard players add #qy daisukes.heavy 256
# x i z (tram q): de q/32 a (q+1)/32 blocs, i el mig del tram endavant i enrere
scoreboard players operation #t daisukes.heavy = #qx daisukes.heavy
scoreboard players operation #t daisukes.heavy += #qx daisukes.heavy
scoreboard players add #t daisukes.heavy 1
execute store result storage daisukes:heavy w.px double 0.015625 run scoreboard players get #t daisukes.heavy
execute store result storage daisukes:heavy w.mx double -0.015625 run scoreboard players get #t daisukes.heavy
execute store result storage daisukes:heavy w.x0 double 0.03125 run scoreboard players get #qx daisukes.heavy
scoreboard players add #qx daisukes.heavy 1
execute store result storage daisukes:heavy w.x1 double 0.03125 run scoreboard players get #qx daisukes.heavy
scoreboard players operation #t daisukes.heavy = #qz daisukes.heavy
scoreboard players operation #t daisukes.heavy += #qz daisukes.heavy
scoreboard players add #t daisukes.heavy 1
execute store result storage daisukes:heavy w.pz double 0.015625 run scoreboard players get #t daisukes.heavy
execute store result storage daisukes:heavy w.mz double -0.015625 run scoreboard players get #t daisukes.heavy
execute store result storage daisukes:heavy w.z0 double 0.03125 run scoreboard players get #qz daisukes.heavy
scoreboard players add #qz daisukes.heavy 1
execute store result storage daisukes:heavy w.z1 double 0.03125 run scoreboard players get #qz daisukes.heavy
# y: la cara de sota del bloc
scoreboard players remove #qy daisukes.heavy 64
execute store result storage daisukes:heavy w.y double 1 run scoreboard players get #qy daisukes.heavy
