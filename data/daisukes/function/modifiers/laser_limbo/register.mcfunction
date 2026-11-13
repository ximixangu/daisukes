data modify storage daisukes:registry modifiers append value "laser_limbo"
data modify storage daisukes:texts map.laser_limbo set value {"text": "Laser Limbo", "color": "#FF4FD8", "bold": true}
data modify storage daisukes:texts desc.laser_limbo set value "Lasers sweep towards you: jump over the red ones (low hum), crouch under the blue ones (high hum). Each hit costs 2.5 hearts."

# Broken Legs (no es pot saltar) i Supersonic (massa rapid) fan impossible esquivar-los,
# Dunce tapa la pantalla (no es veuen els lasers) i Shadow Beat tambe es d'esquivar a temps: massa soroll junts
data modify storage daisukes:registry incompatible.laser_limbo set value ["no_jump", "sonic", "gerxu", "shadow"]
