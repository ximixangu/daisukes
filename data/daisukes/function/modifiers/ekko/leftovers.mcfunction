# Cada segon mentre Ekko no esta actiu: ecos de chunks que no estaven carregats, la vida maxima tallada de qui
# acabava de tornar (o havia sortit en aquell moment) i la proteccio de caiguda de qui encara no havia tocat a terra
execute if data storage daisukes:state {active: ["ekko"]} run return 0
execute as @e[type=minecraft:mannequin,tag=daisukes.ek] at @s run function daisukes:modifiers/ekko/echo/vanish
execute as @a[tag=daisukes.ek_cap] run function daisukes:modifiers/ekko/health/release
execute as @a[tag=daisukes.ek_fall] if predicate daisukes:ekko/on_ground run function daisukes:modifiers/ekko/grace/end
tag @a[tag=daisukes.ek_held] remove daisukes.ek_held
