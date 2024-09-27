#run once when trigger
advancement revoke @s only bts:trigger/block/fletching

execute as @e[type=item_frame,tag=custom_block,tag=fletching] at @s run function bts:blocks/fletching/place


