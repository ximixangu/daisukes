# Com al jugador protegit: 1 s com a minim (el client ha de dir-li al servidor que ha tocat a terra) i fins que toqui
# a terra
scoreboard players remove @s[scores={daisukes.ek_gr=1..}] daisukes.ek_gr 1
execute if score @s daisukes.ek_gr matches ..0 if predicate daisukes:ekko/on_ground run function daisukes:modifiers/ekko/grace/end
