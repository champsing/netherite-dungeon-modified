#Timer & AEC spreading
execute as @r[predicate = cvt_netherdungeon:in_nether] run scoreboard players add cvt_netherdungeontimer cvt_scanprogress 1
execute if score cvt_netherdungeontimer cvt_scanprogress matches 10000.. run scoreboard players reset cvt_netherdungeontimer cvt_scanprogress

# 生成地牢四條件：
# 生成地牢 cvt_dungeonconfig = 1
# cvt_netherdungeontimer cvt_scanprogress = 搜尋時間 cvt_dungeonconfig
# 有 gamemode = !spectator, 在地獄的玩家可以執行
# 在 @s 位置半徑30格球體內沒有 tag = cvt_dungeonmarker 的實體
# 以上條件都符合，執行載入aec。
execute if score 生成地牢 cvt_dungeonconfig matches 1 if score cvt_netherdungeontimer cvt_scanprogress = 搜尋時間 cvt_dungeonconfig as @a[gamemode = !spectator, predicate = cvt_netherdungeon:in_nether] at @s unless entity @e[tag = cvt_dungeonmarker,distance = ..30] run function cvt_netherdungeon:loadaec

#Check for existing dungeon # search upwards
execute as @e[tag=cvt_nethersearch] at @s if entity @e[tag = cvt_dungeonmarker,distance = ..30] run kill @s
execute as @e[tag=cvt_nethersearch] at @s unless entity @e[tag = cvt_dungeonmarker,distance = ..30] run function cvt_netherdungeon:raycast

#Wither Bat
execute as @a at @s anchored eyes if entity @e[tag = cvt_witherbat,distance = ..1] run effect give @s minecraft:wither