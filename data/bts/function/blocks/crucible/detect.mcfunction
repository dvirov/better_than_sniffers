#run once when trigger
advancement revoke @s only bts:trigger/block/crucible

tag @s add block_placed

execute as @e[type=item_frame,tag=place_crucible] at @s align xyz run function bts:blocks/crucible/place

tag @s remove block_placed

