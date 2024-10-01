#run once when trigger
advancement revoke @s only bts:trigger/block/crucible

execute as @e[type=item_frame,tag=place_crucible] at @s align xyz run function bts:blocks/crucible/place


