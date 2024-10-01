#run once when trigger
advancement revoke @s only bts:trigger/block/cooking

execute as @e[type=item_frame,tag=place_cooking] at @s align xyz run function bts:blocks/cooking/place


