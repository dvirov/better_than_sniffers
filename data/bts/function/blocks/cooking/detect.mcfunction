#run once when trigger
advancement revoke @s only bts:trigger/block/cooking

execute as @e[type=item_frame,tag=custom_block,tag=cooking] at @s run function bts:blocks/cooking/place


