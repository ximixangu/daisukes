data modify storage daisukes:registry modifiers append value "laser_eyes"
data modify storage daisukes:texts map.laser_eyes set value {"text": "Laser Eyes", "color": "#FF3B30", "bold": true}
data modify storage daisukes:texts desc.laser_eyes set value "Lasers shoot from your eyes and never switch off: anything you stare at for a second bursts into flames, mobs and friends included. Look at the sky to rest your eyes."

# High Stress: la primera cremada et deixa a mig cor i la segona et mata. Balloon Boy: cada cremada et llanca
# enlaire. Laser Limbo: tambe son lasers vermells, i aquells s'han d'esquivar (es confondrien)
data modify storage daisukes:registry incompatible.laser_eyes set value ["high_stress", "balloon", "laser_limbo"]
