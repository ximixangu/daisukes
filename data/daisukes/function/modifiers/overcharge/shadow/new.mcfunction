# Com a mob muntable de la xarxa: una ombra (marker amb el seu id) que el seguira cada tick
scoreboard players operation #t daisukes.oc = @s daisukes.oc_id
execute summon minecraft:marker run function daisukes:modifiers/overcharge/shadow/setup
