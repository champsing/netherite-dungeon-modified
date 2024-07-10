item modify entity @s weapon.mainhand forge:first_time/sword
item modify entity @s weapon.mainhand forge:first_level/add_3_to_5
item replace entity @s weapon.offhand with air
playsound block.anvil.use ambient @s ~ ~ ~
tag @s remove forging
tellraw @s {"text":"==========================================\n"}
tellraw @s {"text":"         鍛造已經完成，已離開鍛造模式。","color": "aqua"}
tellraw @s {"text":"==========================================\n"}