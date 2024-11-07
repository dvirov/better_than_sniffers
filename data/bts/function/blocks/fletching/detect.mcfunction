#run once when trigger
advancement revoke @s only bts:trigger/block/fletching

tag @s add block_placed

execute as @e[type=item_frame,tag=place_fletching] at @s align xyz run function bts:blocks/fletching/place

tag @s remove block_placed

