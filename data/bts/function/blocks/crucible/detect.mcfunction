#run once when trigger
advancement revoke @s only bts:trigger/block/crucible

execute as @e[type=item_frame,tag=custom_block,tag=crucible] at @s run function bts:blocks/crucible/place


