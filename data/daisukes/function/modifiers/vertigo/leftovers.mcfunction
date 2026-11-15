# Cada segon mentre Vertigo no esta actiu: jugadors que estaven desconnectats quan es va acabar
# (es quedarien amb el mal per caiguda x4 per sempre). Si no el tenen, la comanda falla i no fa res
execute if data storage daisukes:state {active: ["vertigo"]} run return 0
execute as @a run attribute @s minecraft:fall_damage_multiplier modifier remove daisukes:vertigo
