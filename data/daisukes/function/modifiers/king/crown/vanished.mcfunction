# Com a corona d'un Rei que ja no hi es sense haver mort, o que ja no es un monstre: tron buit.
# Un creeper que esclata, un peix de plata que es fica dins la pedra (el Wall Mimic d'Enter the Gungeon), un
# creaking quan li trenquen el cor (o es fa de dia), un monstre que desapareix lluny, un zombi vilata curat...
execute on vehicle run function daisukes:modifiers/king/ruler/uncrown
ride @s dismount

title @a[distance=..64] times 5 50 15
execute if entity @s[tag=daisukes.king_creeper] run title @a[distance=..64] subtitle {"text": "He went out with a bang", "color": "gray", "italic": true}
execute if entity @s[tag=daisukes.king_silverfish] run title @a[distance=..64] subtitle {"text": "He's hiding in the walls", "color": "gray", "italic": true}
execute if entity @s[tag=daisukes.king_creaking] run title @a[distance=..64] subtitle {"text": "He crumbled into dust", "color": "gray", "italic": true}
execute if entity @s[tag=!daisukes.king_creeper,tag=!daisukes.king_silverfish,tag=!daisukes.king_creaking] run title @a[distance=..64] subtitle {"text": "The throne is empty", "color": "gray", "italic": true}
title @a[distance=..64] title {"text": "The King is gone!", "color": "gold", "bold": true}

function daisukes:modifiers/king/crown/fallen
function daisukes:modifiers/king/crown/orphan
