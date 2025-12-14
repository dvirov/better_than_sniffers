advancement revoke @s only bts:trigger/block/replace_in_scructure
execute unless predicate bts:in_sturcture_with_custom_block run return run scoreboard players set @s in_structure 0

execute if score @s in_structure matches 1 run return fail

scoreboard players set @s in_structure 1
execute as @e[type=item_frame,distance=..100,tag=custom_block] at @s run setblock ~ ~ ~ air
execute as @e[type=item_frame,distance=..100,tag=custom_block] at @s align xyz run function bts:blocks/detect_custom_block_main
