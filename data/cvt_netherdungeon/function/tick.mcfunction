#Timer & AEC spreading
execute as @r[predicate=cvt_netherdungeon:in_nether] run scoreboard players add cvt_netherdungeontimer cvt_scanprogress 1
execute if score dungeon_availability cvt_dungeonstatus matches 1 if score cvt_netherdungeontimer cvt_scanprogress = search_time cvt_dungeonstatus as @a[gamemode=!spectator,predicate=cvt_netherdungeon:in_nether] at @s unless entity @e[tag=cvt_dungeonmarker,distance=..30] run function cvt_netherdungeon:loadaec

#Check for existing dungeon # search upwards
execute as @e[tag=cvt_nethersearch] at @s if entity @e[tag=cvt_dungeonmarker,distance=..30] run kill @s
execute as @e[tag=cvt_nethersearch] at @s unless entity @e[tag=cvt_dungeonmarker,distance=..30] run function cvt_netherdungeon:raycast

#Wither Bat
execute as @a at @s anchored eyes if entity @e[tag=cvt_witherbat,distance=..1] run effect give @s minecraft:wither