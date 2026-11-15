# Com al punt on caura l'ancora, mentre encara es a dalt. Primer tick: l'ombra (un display invisible que nomes fa
# ombra) i un so que avisa que alguna cosa caura
execute if score #t daisukes.anchor matches 1 run function daisukes:modifiers/anchor/shadow
# L'ombra creix
execute if score #t daisukes.anchor matches 3 as @e[type=minecraft:block_display,tag=daisukes.anchor_shadow] run data merge entity @s {shadow_radius: 0.5f, shadow_strength: 0.45f}
execute if score #t daisukes.anchor matches 5 as @e[type=minecraft:block_display,tag=daisukes.anchor_shadow] run data merge entity @s {shadow_radius: 0.7f, shadow_strength: 0.55f}
execute if score #t daisukes.anchor matches 7 as @e[type=minecraft:block_display,tag=daisukes.anchor_shadow] run data merge entity @s {shadow_radius: 0.9f, shadow_strength: 0.65f}
execute if score #t daisukes.anchor matches 9 as @e[type=minecraft:block_display,tag=daisukes.anchor_shadow] run data merge entity @s {shadow_radius: 1.1f, shadow_strength: 0.75f}
execute if score #t daisukes.anchor matches 11 as @e[type=minecraft:block_display,tag=daisukes.anchor_shadow] run data merge entity @s {shadow_radius: 1.3f, shadow_strength: 0.85f}
execute if score #t daisukes.anchor matches 13 as @e[type=minecraft:block_display,tag=daisukes.anchor_shadow] run data merge entity @s {shadow_radius: 1.5f, shadow_strength: 1f}
# Cercle de flames d'anima que es tanca
execute if score #t daisukes.anchor matches 2 run particle minecraft:soul_fire_flame ~1.90 ~0.1 ~0.00 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 2 run particle minecraft:soul_fire_flame ~1.54 ~0.1 ~1.12 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 2 run particle minecraft:soul_fire_flame ~0.59 ~0.1 ~1.81 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 2 run particle minecraft:soul_fire_flame ~-0.59 ~0.1 ~1.81 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 2 run particle minecraft:soul_fire_flame ~-1.54 ~0.1 ~1.12 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 2 run particle minecraft:soul_fire_flame ~-1.90 ~0.1 ~0.00 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 2 run particle minecraft:soul_fire_flame ~-1.54 ~0.1 ~-1.12 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 2 run particle minecraft:soul_fire_flame ~-0.59 ~0.1 ~-1.81 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 2 run particle minecraft:soul_fire_flame ~0.59 ~0.1 ~-1.81 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 2 run particle minecraft:soul_fire_flame ~1.54 ~0.1 ~-1.12 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 6 run particle minecraft:soul_fire_flame ~1.40 ~0.1 ~0.00 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 6 run particle minecraft:soul_fire_flame ~1.13 ~0.1 ~0.82 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 6 run particle minecraft:soul_fire_flame ~0.43 ~0.1 ~1.33 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 6 run particle minecraft:soul_fire_flame ~-0.43 ~0.1 ~1.33 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 6 run particle minecraft:soul_fire_flame ~-1.13 ~0.1 ~0.82 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 6 run particle minecraft:soul_fire_flame ~-1.40 ~0.1 ~0.00 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 6 run particle minecraft:soul_fire_flame ~-1.13 ~0.1 ~-0.82 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 6 run particle minecraft:soul_fire_flame ~-0.43 ~0.1 ~-1.33 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 6 run particle minecraft:soul_fire_flame ~0.43 ~0.1 ~-1.33 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 6 run particle minecraft:soul_fire_flame ~1.13 ~0.1 ~-0.82 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 10 run particle minecraft:soul_fire_flame ~0.90 ~0.1 ~0.00 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 10 run particle minecraft:soul_fire_flame ~0.73 ~0.1 ~0.53 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 10 run particle minecraft:soul_fire_flame ~0.28 ~0.1 ~0.86 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 10 run particle minecraft:soul_fire_flame ~-0.28 ~0.1 ~0.86 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 10 run particle minecraft:soul_fire_flame ~-0.73 ~0.1 ~0.53 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 10 run particle minecraft:soul_fire_flame ~-0.90 ~0.1 ~0.00 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 10 run particle minecraft:soul_fire_flame ~-0.73 ~0.1 ~-0.53 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 10 run particle minecraft:soul_fire_flame ~-0.28 ~0.1 ~-0.86 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 10 run particle minecraft:soul_fire_flame ~0.28 ~0.1 ~-0.86 0 0 0 0 1 force @a[distance=..48]
execute if score #t daisukes.anchor matches 10 run particle minecraft:soul_fire_flame ~0.73 ~0.1 ~-0.53 0 0 0 0 1 force @a[distance=..48]
