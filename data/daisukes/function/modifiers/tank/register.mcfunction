# Tanks: A i D giren el jugador sobre si mateix, com un tanc, en lloc de moure'l de costat; Shift planta
# mines (cubs grocs) i el salt les fa esclatar totes
data modify storage daisukes:registry modifiers append value "tank"
data modify storage daisukes:texts map.tank set value {"text": "Tanks", "color": "#7F9A3A", "bold": true}
data modify storage daisukes:texts desc.tank set value "A and D turn you in place like a tank instead of strafing. Sneak to plant a mine (up to 5) and jump to set them all off: they wreck blocks and hurt everything, you included."
# Backwards: anar de costat era la sortida. Laser Limbo i Arrow Rush obliguen a ajupir-se i a saltar: mines
# plantades i esclatant als teus peus
data modify storage daisukes:registry incompatible.tank set value ["backwards", "laser_limbo", "arrow_rush"]
