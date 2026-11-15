scoreboard players add #t daisukes.anchor 1
# La cadena es desfa baula a baula (dels peus cap a l'ancora), l'ancora s'enfonsa a terra i desapareix
execute if score #t daisukes.anchor matches 1..15 run function daisukes:modifiers/anchor/retract
execute if score #t daisukes.anchor matches 6..25 run function daisukes:modifiers/anchor/sink
execute if score #t daisukes.anchor matches 30.. run function daisukes:modifiers/anchor/done
