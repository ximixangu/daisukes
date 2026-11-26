# Com al jugador que ha mort, ha tornat a entrar o es espectador: el seu eco s'esvaeix (no hi torna) i es desfa el
# que quedava pendent (la vida maxima tallada i la proteccio de caiguda)
scoreboard players set @s daisukes.ek_dead 0
scoreboard players set @s daisukes.ek_left 0
execute if score @s daisukes.ek_t matches 1.. run function daisukes:modifiers/ekko/cancel
scoreboard players set @s[scores={daisukes.ek_hp=1..}] daisukes.ek_hp 0
execute if entity @s[tag=daisukes.ek_cap] run function daisukes:modifiers/ekko/health/release
execute if entity @s[tag=daisukes.ek_fall] run function daisukes:modifiers/ekko/grace/end
# Si te el Shift premut, no compta fins que el torni a premer
execute if predicate daisukes:ekko/sneak run tag @s add daisukes.ek_held
