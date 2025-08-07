#run once when trigger
advancement revoke @s only bts:trigger/block/alchemy

tag @s add block_placed

execute as @e[type=item_frame,tag=place_alchemy] at @s align xyz run function bts:blocks/alchemy/place

tag @s remove block_placed

