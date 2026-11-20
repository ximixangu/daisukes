# Com a mob muntable de la xarxa: una ombra (marker amb el seu id) que el seguira cada tick. Neix al mob (des de
# track, la posicio es la del jugador: si naixia alla, es quedava sola i feia un pols als seus peus)
scoreboard players operation #t daisukes.oc = @s daisukes.oc_id
execute at @s summon minecraft:marker run function daisukes:modifiers/overcharge/shadow/setup
