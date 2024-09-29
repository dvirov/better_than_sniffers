#run once when trigger
advancement revoke @s only bts:trigger/block/crucible

execute as @e[type=item_frame,tag=place_crucible] at @s run function bts:blocks/crucible/detect2


