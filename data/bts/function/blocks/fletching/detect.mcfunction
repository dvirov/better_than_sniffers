#run once when trigger
advancement revoke @s only bts:trigger/block/fletching
execute as @e[type=item_frame,tag=place_fletching] at @s run function bts:blocks/fletching/detect2


