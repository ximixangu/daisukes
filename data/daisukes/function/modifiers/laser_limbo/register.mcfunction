data modify storage daisukes:registry modifiers append value "laser_limbo"
data merge storage daisukes:texts {map: {laser_limbo: {"text": "Laser Limbo", "color": "#FF4FD8", "bold": true}}}

# Broken Legs (no es pot saltar) i Supersonic (massa rapid) fan impossible esquivar-los,
# Dunce tapa la pantalla (no es veuen els lasers) i Shadow Beat tambe es d'esquivar a temps: massa soroll junts
data modify storage daisukes:registry incompatible.laser_limbo set value ["no_jump", "sonic", "gerxu", "shadow"]
