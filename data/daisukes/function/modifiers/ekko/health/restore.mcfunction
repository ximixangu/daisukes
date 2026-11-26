# Com al jugador que acaba de tornar: la vida torna a ser T, la que tenia en deixar l'eco. Als jugadors no se'ls pot
# posar la vida directament: si ha de pujar es cura del tot, i la vida maxima tallada a T un moment l'atura alla (o,
# si ha de baixar, la fa baixar). Tot x10000: T, H (la d'ara) i M (la maxima d'ara)
execute store result score #t daisukes.ek run data get storage daisukes:ekko cur.hp 10000
execute store result score #h daisukes.ek run data get entity @s Health 10000
execute store result score #m daisukes.ek run attribute @s minecraft:max_health get 10000
scoreboard players operation #d daisukes.ek = #t daisukes.ek
scoreboard players operation #d daisukes.ek -= #h daisukes.ek
# Gairebe igual (menys d'una centesima): res
execute if score #d daisukes.ek matches -100..100 run return 0
execute if score #d daisukes.ek matches 1.. run function daisukes:modifiers/ekko/health/up
execute if score #d daisukes.ek matches ..-1 run playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 0.4 1.5
# Si T arriba a la maxima d'ara, curar-se del tot ja hi deixa
execute if score #t daisukes.ek < #m daisukes.ek run function daisukes:modifiers/ekko/health/cap
