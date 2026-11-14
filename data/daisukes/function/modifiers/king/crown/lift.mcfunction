# Com a corona que marxa del cap del jugador cap a un Rei nou (crown/seek). Ara es als seus ulls amb el
# desplacament a l'espai de la camera: torna a ser una corona normal 1,2 blocs per sobre dels ulls, i surt
# d'alla volant (qui la portava la veu apareixer per dalt de la pantalla i anar cap al Rei nou)
tp @s ~ ~1.2 ~
data merge entity @s {teleport_duration: 2, start_interpolation: 0, interpolation_duration: 2, transformation: {translation: [0f, 0.25f, 0f]}}
