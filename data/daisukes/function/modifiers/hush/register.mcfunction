data modify storage daisukes:registry modifiers append value "hush"
data merge storage daisukes:texts {map: {hush: {"text": "Hush", "color": "#3FE0D0", "bold": true}}}
data modify storage daisukes:texts desc.hush set value "The creature is triggered by noise. If the noise bar fills up, bad things will happen."
