# Snake: cada jugador deixa una cua de blocs verds brillants (block_display) a les caselles per on passa, com la serp
# del joc. Fa 10 blocs i creix 5 cada cop que menja, fins a 40. Nomes avanca quan el jugador es mou. Tocar qualsevol
# cua (la propia o la d'un company) fa mal
data modify storage daisukes:registry modifiers append value "snake"
data modify storage daisukes:texts map.snake set value {"text": "Snake", "color": "#39FF14", "bold": true}
data modify storage daisukes:texts desc.snake set value "You leave a glowing tail behind you, like the snake in the old game: 10 blocks long, 5 more every time you eat, up to 40. It only moves when you do. Touching any tail, yours or a friend's, hurts."
# Supersonic: a 10x la cua es fa i es desfa en un moment i girar en sec es impossible. Arrow Rush obliga a premer S
# (enrere, dins la propia cua). Heisenberg: quiet, saltes a l'atzar i deixes trossos pertot, on despres tornes a caure
data modify storage daisukes:registry incompatible.snake set value ["sonic", "arrow_rush", "heisenberg"]
