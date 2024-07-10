scoreboard objectives add cvt_scanprogress dummy
scoreboard objectives add cvt_dungeonrng dummy
scoreboard objectives add cvt_dungeonconfig dummy
scoreboard objectives add cvt_playerprogress dummy {"text": "探索地牢數", "color":"gold"}
scoreboard objectives add forge trigger

#the period of each aec raycast, referring to tick.mcfunction
scoreboard players set 搜尋時間 cvt_dungeonconfig 1200
#the lifetime for the aecs finding ancient debrises, referring to raycast.mcfunction
scoreboard players set 搜尋標記自毀壽命 cvt_dungeonconfig 32

#set the status to Enabled
scoreboard players set 生成地牢 cvt_dungeonconfig 0