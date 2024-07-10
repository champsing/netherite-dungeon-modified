scoreboard players add @s cvt_scanprogress 1
execute if score @s cvt_scanprogress = kill_time cvt_dungeonstatus run kill @s
execute unless block ~ ~ ~ minecraft:ancient_debris run tp @s ~ ~1 ~
execute if block ~ ~ ~ minecraft:ancient_debris run function cvt_netherdungeon:rng
execute if block ~1 ~ ~ minecraft:ancient_debris run function cvt_netherdungeon:rng
execute if block ~ ~ ~1 minecraft:ancient_debris run function cvt_netherdungeon:rng
execute if block ~-1 ~ ~ minecraft:ancient_debris run function cvt_netherdungeon:rng
execute if block ~ ~ ~-1 minecraft:ancient_debris run function cvt_netherdungeon:rng
execute if block ~1 ~ ~1 minecraft:ancient_debris run function cvt_netherdungeon:rng
execute if block ~1 ~ ~-1 minecraft:ancient_debris run function cvt_netherdungeon:rng
execute if block ~-1 ~ ~-1 minecraft:ancient_debris run function cvt_netherdungeon:rng
execute if block ~-1 ~ ~1 minecraft:ancient_debris run function cvt_netherdungeon:rng