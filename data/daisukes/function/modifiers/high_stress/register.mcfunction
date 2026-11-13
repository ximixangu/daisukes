data modify storage daisukes:registry modifiers append value "high_stress"
data modify storage daisukes:texts map.high_stress set value {"text": "High Stress", "color": "red", "bold": true}
data modify storage daisukes:texts desc.high_stress set value "After you take damage, your max health drops to half a heart for 6 s: any hit kills you. Survive it and you heal completely."
