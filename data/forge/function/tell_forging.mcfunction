tellraw @s {"text":"=========================================="}
tellraw @s {"text":"         你現在已經進入鍛造模式","color": "aqua"}
tellraw @s [{"text":"        請將要鍛造的物品放在","color": "aqua"},{"text": "主手","color":"gold"},{"text":"鍛造配方放在","color": "aqua"},{"text": "副手","color":"gold"}]
tellraw @s [{"text":"        若要取消鍛造，請按","color": "aqua"},{"text": "這裡","color":"white","underlined": true,"bold": true,"clickEvent": {"action":"run_command","value":"/trigger forge set -106"}}]
tellraw @s {"text":"==========================================\n"}