#Enter Forging Mode
tag @a[scores={forge=1..}] add forging

#Tell the player that he/she is forging
execute as @a[scores={forge=1..}] run function forge:tell_forging

#remove the trigger score and re-enable
execute as @a[scores={forge=-106}] run tag @s remove forging
scoreboard players reset @a forge
scoreboard players enable @a forge

#first level sword forging
execute as @a[tag=forging] if predicate forge:sword/first_level unless predicate forge:sword/first_level_forged unless predicate forge:attempt_upgrade_second run function forge:first_time/sword
execute as @a[tag=forging] if predicate forge:sword/first_level_forged run function forge:first_level/add_3_to_5
execute as @a[tag=forging] if predicate forge:sword/second_level run function forge:second_level/multiply_2