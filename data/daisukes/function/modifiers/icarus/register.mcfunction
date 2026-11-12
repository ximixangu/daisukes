data modify storage daisukes:registry modifiers append value "icarus"
data merge storage daisukes:texts {map: {icarus: {"text":"Icarus", "color": "aqua", "bold": true}}}

data modify storage daisukes:registry incompatible.icarus set value ["balloon"]
