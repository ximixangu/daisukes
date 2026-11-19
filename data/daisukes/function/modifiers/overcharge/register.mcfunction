# Overcharge: els mobs estan sobrecarregats. Els que son a prop es connecten amb rajos electrics que no es poden
# travessar, i cada mob que mor descarrega el corrent a terra al seu voltant: cal ser a l'aire
data modify storage daisukes:registry modifiers append value "overcharge"
data modify storage daisukes:texts map.overcharge set value {"text": "Overcharge", "color": "#6AB8FF", "bold": true}
data modify storage daisukes:texts desc.overcharge set value "Nearby mobs link up with electric beams that shock you and throw you back. When a mob dies, its charge strikes the ground around it a moment later: be in the air! A lightning rod nearby soaks it up."
