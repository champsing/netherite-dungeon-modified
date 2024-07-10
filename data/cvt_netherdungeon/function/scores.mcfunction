scoreboard objectives add cvt_scanprogress dummy
scoreboard objectives add cvt_dungeonrng dummy
scoreboard objectives add cvt_dungeonstatus dummy
scoreboard objectives add forge trigger

#the period of each aec raycast, referring to tick.mcfunction
scoreboard players set search_time cvt_dungeonstatus 1200
#the lifetime for the aecs finding ancient debrises, referring to raycast.mcfunction
scoreboard players set kill_time cvt_dungeonstatus 32

#set the status to Enabled
scoreboard players set dungeon_availability cvt_dungeonstatus 0