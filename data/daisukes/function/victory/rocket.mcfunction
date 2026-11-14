# Macro {yaw}, com a un jugador: un petard en aquella direccio, a 4-9 blocs, amb explosio, colors i alcada a l'atzar
$data modify storage daisukes:temp victory_rocket.yaw set value $(yaw)
execute store result storage daisukes:temp victory_rocket.dist int 1 run random value 4..9
execute store result storage daisukes:temp victory_rocket.life int 1 run random value 12..22

# Colors: daurat 16763196, taronja 16747546, blanc 16777215, groc 16772696, vermell 16726843, magenta 14696699,
# lila 10243583, rosa 16743110, aqua 4251903, blau 5209343, llima 8191823, verd 3066944
execute store result score #pick daisukes.victory run random value 0..8
execute if score #pick daisukes.victory matches 0 run data modify storage daisukes:temp victory_rocket.explosion set value {shape: "large_ball", colors: [I; 16763196, 16747546], fade_colors: [I; 16777215], has_trail: true, has_twinkle: true}
execute if score #pick daisukes.victory matches 1 run data modify storage daisukes:temp victory_rocket.explosion set value {shape: "star", colors: [I; 16772696], fade_colors: [I; 16747546], has_trail: true}
execute if score #pick daisukes.victory matches 2 run data modify storage daisukes:temp victory_rocket.explosion set value {shape: "burst", colors: [I; 4251903, 16777215], fade_colors: [I; 5209343], has_twinkle: true}
execute if score #pick daisukes.victory matches 3 run data modify storage daisukes:temp victory_rocket.explosion set value {shape: "large_ball", colors: [I; 14696699, 10243583], fade_colors: [I; 16743110], has_trail: true}
execute if score #pick daisukes.victory matches 4 run data modify storage daisukes:temp victory_rocket.explosion set value {shape: "small_ball", colors: [I; 8191823, 3066944], fade_colors: [I; 16772696], has_twinkle: true}
execute if score #pick daisukes.victory matches 5 run data modify storage daisukes:temp victory_rocket.explosion set value {shape: "large_ball", colors: [I; 16726843, 16777215], fade_colors: [I; 16763196], has_trail: true}
execute if score #pick daisukes.victory matches 6 run data modify storage daisukes:temp victory_rocket.explosion set value {shape: "star", colors: [I; 5209343, 4251903], fade_colors: [I; 16777215], has_twinkle: true}
execute if score #pick daisukes.victory matches 7 run data modify storage daisukes:temp victory_rocket.explosion set value {shape: "burst", colors: [I; 16743110, 14696699], fade_colors: [I; 16777215], has_trail: true}
execute if score #pick daisukes.victory matches 8 run data modify storage daisukes:temp victory_rocket.explosion set value {shape: "creeper", colors: [I; 8191823], fade_colors: [I; 3066944], has_trail: true}

function daisukes:victory/launch with storage daisukes:temp victory_rocket
