# Macro {text, pitch} (victory/title): el titol amb una lletra mes, i la seva nota per a tothom
$title @a title {"text": "$(text)", "color": "gold", "bold": true}
$execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 $(pitch)
