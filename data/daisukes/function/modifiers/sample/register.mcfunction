data modify storage daisukes:registry modifiers append value "sample"
data merge storage daisukes:texts {map: {sample: {"text": "Dummy", "color": "white", "bold": true}}}

# Opcional: modificadors que no poden sortir a la vegada que aquest (tants com vulguis).
# Es reciproc: nomes cal posar-ho en un dels dos register.
# data modify storage daisukes:registry incompatible.sample set value ["moon", "dark"]
