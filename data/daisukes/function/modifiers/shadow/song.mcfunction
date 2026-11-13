# La canco de l'ombra: 4 compassos de 4 temps (Do - Lam - Fa - Sol7) que es repeteixen.
#   note   = toca una nota (pitch) i treu una nota musical del color que toca (color)
#   leap   = cada ombra salta on sera el seu jugador d'aqui a 2 temps
#   strike = colpeja on ha saltat i toca l'acord (nota aguda + baix)
# Un strike va sempre 2 temps despres del seu leap. Per fer-ho mes dificil, afegeix-ne mes parelles.

# Compas 1 - Do: 1, 2 salta, 3, 4 COP
execute if score #beat daisukes.shadow matches 0 run function daisukes:modifiers/shadow/note {pitch: 0.707107, color: 0.25}
execute if score #beat daisukes.shadow matches 1 run function daisukes:modifiers/shadow/note {pitch: 0.890899, color: 0.416667}
execute if score #beat daisukes.shadow matches 1 run function daisukes:modifiers/shadow/leap
execute if score #beat daisukes.shadow matches 2 run function daisukes:modifiers/shadow/note {pitch: 1.059463, color: 0.541667}
execute if score #beat daisukes.shadow matches 3 run function daisukes:modifiers/shadow/strike {pitch: 1.414214, bass: 0.707107}

# Compas 2 - La menor: 1, 2 salta, 3, 4 COP
execute if score #beat daisukes.shadow matches 4 run function daisukes:modifiers/shadow/note {pitch: 0.594604, color: 0.125}
execute if score #beat daisukes.shadow matches 5 run function daisukes:modifiers/shadow/note {pitch: 0.707107, color: 0.25}
execute if score #beat daisukes.shadow matches 5 run function daisukes:modifiers/shadow/leap
execute if score #beat daisukes.shadow matches 6 run function daisukes:modifiers/shadow/note {pitch: 0.890899, color: 0.416667}
execute if score #beat daisukes.shadow matches 7 run function daisukes:modifiers/shadow/strike {pitch: 1.189207, bass: 0.594604}

# Compas 3 - Fa: 1 salta, 2, 3 COP i torna a saltar, 4
execute if score #beat daisukes.shadow matches 8 run function daisukes:modifiers/shadow/note {pitch: 0.943874, color: 0.458333}
execute if score #beat daisukes.shadow matches 8 run function daisukes:modifiers/shadow/leap
execute if score #beat daisukes.shadow matches 9 run function daisukes:modifiers/shadow/note {pitch: 1.189207, color: 0.625}
execute if score #beat daisukes.shadow matches 10 run function daisukes:modifiers/shadow/strike {pitch: 1.414214, bass: 0.943874}
execute if score #beat daisukes.shadow matches 10 run function daisukes:modifiers/shadow/leap
execute if score #beat daisukes.shadow matches 11 run function daisukes:modifiers/shadow/note {pitch: 1.887749, color: 0.958333}

# Compas 4 - Sol7: 1 COP, 2, 3, 4 (respir fins al compas 1)
execute if score #beat daisukes.shadow matches 12 run function daisukes:modifiers/shadow/strike {pitch: 1.059463, bass: 0.529732}
execute if score #beat daisukes.shadow matches 13 run function daisukes:modifiers/shadow/note {pitch: 0.667420, color: 0.208333}
execute if score #beat daisukes.shadow matches 14 run function daisukes:modifiers/shadow/note {pitch: 0.793701, color: 0.333333}
execute if score #beat daisukes.shadow matches 15 run function daisukes:modifiers/shadow/note {pitch: 0.943874, color: 0.458333}
