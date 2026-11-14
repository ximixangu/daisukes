# Com a molt 3 orbes vives per jugador: si ja en te 3, ho torna a provar d'aqui a 1 s
scoreboard players set #n daisukes.orb 0
execute as @e[type=minecraft:interaction,tag=daisukes.orb] if score @s daisukes.orb_owner = #owner daisukes.orb run scoreboard players add #n daisukes.orb 1
execute if score #n daisukes.orb matches 3.. run return run scoreboard players set @s daisukes.orb_timer 20

# La seguent: cada cop mes aviat (de 10 s a 5,5 s en 90 s), amb fins a 2 s d'atzar
scoreboard players operation #t daisukes.orb = #time daisukes.orb
scoreboard players operation #t daisukes.orb /= #20 daisukes.orb
scoreboard players set #wait daisukes.orb 100
scoreboard players operation #wait daisukes.orb -= #t daisukes.orb
execute if score #wait daisukes.orb matches ..109 run scoreboard players set #wait daisukes.orb 110
execute store result score #t daisukes.orb run random value 0..40
scoreboard players operation #wait daisukes.orb += #t daisukes.orb
scoreboard players operation @s daisukes.orb_timer = #wait daisukes.orb

function daisukes:modifiers/orbital/pick
# A partir dels 60 s, una de cada quatre vegades en surten dues
execute store result score #t daisukes.orb run random value 1..4
execute if score #time daisukes.orb matches 1200.. if score #n daisukes.orb matches ..1 if score #t daisukes.orb matches 1 run function daisukes:modifiers/orbital/pick
