# Com al jugador: #y, quant pujara (deumilesimes de bloc) un salt amb #v amunt i la seva gravetat. Cada tick es mou v i
# despres v = (v - g) x 0,98
scoreboard players set #y daisukes.jk 0
scoreboard players operation #w daisukes.jk = #v daisukes.jk
scoreboard players set #i daisukes.jk 0
execute if score #w daisukes.jk matches 1.. run function daisukes:modifiers/jump_king/math/apex_step
