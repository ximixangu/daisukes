scoreboard players add #try daisukes.heart 1
execute if score #try daisukes.heart matches 31.. run return 0
execute store result storage daisukes:heart s.lx int 1 run random value -5..5
execute store result storage daisukes:heart s.d int 1 run random value 7..10
execute store result storage daisukes:heart s.dy int 1 run random value -3..3
function daisukes:modifiers/heartbound/haunt_at with storage daisukes:heart s
execute if score #ok daisukes.heart matches 1 run return 1
function daisukes:modifiers/heartbound/haunt_try
