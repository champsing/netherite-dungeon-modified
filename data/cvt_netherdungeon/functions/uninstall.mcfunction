scoreboard objectives remove cvt_scanprogress
scoreboard objectives remove cvt_dungeonrng
scoreboard players reset search_time cvt_dungeonstatus
scoreboard players reset kill_time cvt_dungeonstatus
scoreboard players reset dungeon_availability cvt_dungeonstatus
scoreboard objectives remove forge
schedule clear actionbar_information:dungeon_status
tellraw @a {"text":">> 獄髓地牢資料包已成功解除安裝！ ","color":"aqua","bold":true}
tellraw @a {"text":">> ","color":"yellow","extra": [{"text": "感謝您的使用！","color":"gold","bold": true}]}