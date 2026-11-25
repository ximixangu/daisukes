# El punt ja es dins d'una paret: torna fins al pas anterior i avanca de vuite en vuite fins a la superficie.
# Un chunk sense carregar acaba el raig sense tocar res
execute unless loaded ~ ~ ~ run return 0
scoreboard players remove #dist daisukes.le 7
execute positioned ^ ^ ^-0.875 run function daisukes:modifiers/laser_eyes/ray/fine
