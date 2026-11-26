# Com al jugador el primer cop que el veiem: numero nou i res pendent
execute store result score @s daisukes.ek_id run scoreboard players add #next daisukes.ek 1
scoreboard players set @s daisukes.ek_t 0
scoreboard players set @s daisukes.ek_cd 0
scoreboard players set @s daisukes.ek_hp 0
scoreboard players set @s daisukes.ek_dead 0
scoreboard players set @s daisukes.ek_left 0
# Restes d'una altra vegada (havia sortit just quan tornava a un eco, i leftovers no el va veure)
execute if entity @s[tag=daisukes.ek_cap] run function daisukes:modifiers/ekko/health/release
execute if entity @s[tag=daisukes.ek_fall] run function daisukes:modifiers/ekko/grace/end
# Si ja tenia el Shift premut quan ha comencat, no compta fins que el deixi anar i el torni a premer
tag @s remove daisukes.ek_held
execute if predicate daisukes:ekko/sneak run tag @s add daisukes.ek_held
