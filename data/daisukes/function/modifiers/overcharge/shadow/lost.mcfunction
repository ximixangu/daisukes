# Com a ombra que aquest tick no ha trobat el seu mob muntable. Sense pols si no es d'aquesta partida (sense id),
# si era una llama del comerciant que se n'anava o si el mob encara hi es (s'ha allunyat de cop: teletransport,
# portal...). Si no, s'ha mort: pols on era
execute unless predicate daisukes:overcharge/tracked run return run kill @s
execute if entity @s[tag=daisukes.oc_leaving] run return run kill @s
scoreboard players operation #t daisukes.oc = @s daisukes.oc_id
execute if entity @e[tag=daisukes.oc_ride,predicate=daisukes:overcharge/is_t] run return run kill @s
execute positioned ~ ~0.9 ~ run function daisukes:modifiers/overcharge/pulse/start
kill @s
