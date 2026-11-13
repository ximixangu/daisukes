data modify storage daisukes:registry modifiers append value "bone_voyage"
data merge storage daisukes:texts {map: {bone_voyage: {"text": "Bone Voyage", "color": "white", "bold": true}}}

# Opcional: tots dos fixen la nit, així que potser no vols que surtin junts.
# data modify storage daisukes:registry incompatible.bone_voyage set value ["dark"]