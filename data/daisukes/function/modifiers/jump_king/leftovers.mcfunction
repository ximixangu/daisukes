# Cada segon mentre Jump King no esta actiu: qui encara en te restes (no hi era en desactivar-lo, o era enlaire) les
# perd
execute if data storage daisukes:state {active: ["jump_king"]} run return 0
execute as @a[tag=daisukes.jk_ok] run function daisukes:modifiers/jump_king/clean
execute as @a[tag=daisukes.jk_off] run function daisukes:modifiers/jump_king/clean
execute as @a[tag=daisukes.jk_fall] run function daisukes:modifiers/jump_king/clean
