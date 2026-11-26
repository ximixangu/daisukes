# Ekko: en premer el Shift, el jugador deixa un eco (silueta blava que brilla, lligada a ell per un fil) i, al cap de
# 5 s, hi torna amb la vida que tenia en aquell moment, tant si l'havia perdut com si s'havia curat
data modify storage daisukes:registry modifiers append value "ekko"
data modify storage daisukes:texts map.ekko set value {"text": "Ekko", "color": "#4F8BFF", "bold": true}
data modify storage daisukes:texts desc.ekko set value "Sneak and a glowing blue echo of you stays behind. 5 s later you snap back to it, with the health you had back then: any damage since is undone, and so is any healing."
# Laser Limbo i Arrow Rush obliguen a ajupir-se, i Blind Spot, Tanks i Katamari fan servir el Shift: cada cop
# deixaries un eco. Snake: tornaries de cara a la teva cua. Ctrl+Z: el que piques torna a sortir, i l'eco sol quedar
# dins del forat que acabes d'obrir
data modify storage daisukes:registry incompatible.ekko set value ["arrow_rush", "tank", "katamari", "snake"]
