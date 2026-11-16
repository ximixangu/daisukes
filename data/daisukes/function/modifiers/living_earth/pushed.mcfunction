# Al centre d'un negre que ja no hi es: si al costat hi ha un bloc que se n'allunya (empes o estirat per un pisto), es
# el seu: fora, sense donar res. (facing: 0 avall, 1 amunt, 2 nord, 3 sud, 4 oest, 5 est; si s'estira, va al reves)
execute if block ~1 ~ ~ minecraft:moving_piston if data block ~1 ~ ~ {source: 0b, facing: 5b, extending: 1b} run setblock ~1 ~ ~ minecraft:air
execute if block ~1 ~ ~ minecraft:moving_piston if data block ~1 ~ ~ {source: 0b, facing: 4b, extending: 0b} run setblock ~1 ~ ~ minecraft:air
execute if block ~-1 ~ ~ minecraft:moving_piston if data block ~-1 ~ ~ {source: 0b, facing: 4b, extending: 1b} run setblock ~-1 ~ ~ minecraft:air
execute if block ~-1 ~ ~ minecraft:moving_piston if data block ~-1 ~ ~ {source: 0b, facing: 5b, extending: 0b} run setblock ~-1 ~ ~ minecraft:air
execute if block ~ ~1 ~ minecraft:moving_piston if data block ~ ~1 ~ {source: 0b, facing: 1b, extending: 1b} run setblock ~ ~1 ~ minecraft:air
execute if block ~ ~1 ~ minecraft:moving_piston if data block ~ ~1 ~ {source: 0b, facing: 0b, extending: 0b} run setblock ~ ~1 ~ minecraft:air
execute if block ~ ~-1 ~ minecraft:moving_piston if data block ~ ~-1 ~ {source: 0b, facing: 0b, extending: 1b} run setblock ~ ~-1 ~ minecraft:air
execute if block ~ ~-1 ~ minecraft:moving_piston if data block ~ ~-1 ~ {source: 0b, facing: 1b, extending: 0b} run setblock ~ ~-1 ~ minecraft:air
execute if block ~ ~ ~1 minecraft:moving_piston if data block ~ ~ ~1 {source: 0b, facing: 3b, extending: 1b} run setblock ~ ~ ~1 minecraft:air
execute if block ~ ~ ~1 minecraft:moving_piston if data block ~ ~ ~1 {source: 0b, facing: 2b, extending: 0b} run setblock ~ ~ ~1 minecraft:air
execute if block ~ ~ ~-1 minecraft:moving_piston if data block ~ ~ ~-1 {source: 0b, facing: 2b, extending: 1b} run setblock ~ ~ ~-1 minecraft:air
execute if block ~ ~ ~-1 minecraft:moving_piston if data block ~ ~ ~-1 {source: 0b, facing: 3b, extending: 0b} run setblock ~ ~ ~-1 minecraft:air
