# Com a jugador que acaba d'entrar al servidor (el primer cop, o tornant). Es crida des de core/tick.
# El que li hagi quedat de modificadors que ja no estan actius ho treu core/leftovers (en menys d'1 s)

# Primer cop que entra amb aquesta versio del datapack (encara no te puntuacio de daisukes.left)
execute unless score @s daisukes.left matches 0.. run function daisukes:core/legacy_reset
scoreboard players set @s daisukes.left 0

# Victoria (victory/watch): si entra a l'End, el drac encara s'ha de carregar. Que no sembli que ha mort
scoreboard players set #dragons_before daisukes.victory 0

# Benvinguda amb els modificadors actius (si la presentacio encara no ha sortit, la veura ara mateix)
execute if score #engine_active daisukes.engine matches 1 unless score #intro daisukes.engine matches 1 if data storage daisukes:temp chat_texts[0] run tellraw @s ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Daisuke's Challenge", "color": "red", "bold": true}, {"text": " · Active: ", "color": "gray"}, {"nbt": "chat_texts[]", "storage": "daisukes:temp", "interpret": true, "separator": {"text": ", ", "color": "gray"}}]
