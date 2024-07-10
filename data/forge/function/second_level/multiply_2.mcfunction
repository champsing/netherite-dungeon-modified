item modify entity @s weapon.mainhand forge:second_level/multiply_2
item replace entity @s weapon.offhand with air
playsound block.anvil.use ambient @s ~ ~ ~
tag @s remove forging
tellraw @s {"text":"==========================================\n"}
tellraw @s {"text":"         鍛造已經完成，已離開鍛造模式。","color": "aqua"}
tellraw @s {"text":"==========================================\n"}