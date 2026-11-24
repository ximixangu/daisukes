# Macro: blava (ax ay az, ax2 ay2 az2), vermella (bx..bz2), dimensio (dim) i caixa forta (vx..vz2). A la dimensio de
# les caixes: 1) blava -> caixa forta; 2) vermella -> blava; 3) caixa forta -> vermella. Cada pas nomes si l'anterior
# ha anat be (#s1 #s2 #s3), i si fallava el 3 (no hauria de passar), la blava torna a ser com era: mai es perd ni es
# duplica res. Al final la caixa forta queda buida
$execute store success score #s1 daisukes.we run clone $(ax) $(ay) $(az) $(ax2) $(ay2) $(az2) to minecraft:overworld $(vx) $(vy) $(vz) strict
$execute if score #s1 daisukes.we matches 1 store success score #s2 daisukes.we run clone $(bx) $(by) $(bz) $(bx2) $(by2) $(bz2) $(ax) $(ay) $(az)
$execute if score #s2 daisukes.we matches 1 store success score #s3 daisukes.we run clone from minecraft:overworld $(vx) $(vy) $(vz) $(vx2) $(vy2) $(vz2) to $(dim) $(bx) $(by) $(bz)
$execute if score #s2 daisukes.we matches 1 unless score #s3 daisukes.we matches 1 run clone from minecraft:overworld $(vx) $(vy) $(vz) $(vx2) $(vy2) $(vz2) to $(dim) $(ax) $(ay) $(az)
$execute in minecraft:overworld run fill $(vx) $(vy) $(vz) $(vx2) $(vy2) $(vz2) minecraft:air strict
