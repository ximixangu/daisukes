execute if entity @a[tag=daisukes.earth_owner] run tp @s @a[tag=daisukes.earth_owner,limit=1]
data merge entity @s {PickupDelay: 0s, Motion: [0d, 0d, 0d]}
