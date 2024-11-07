#run once when trigger
advancement revoke @s only bts:trigger/block/anvil

tag @s add block_placed

execute as @e[type=item_frame,tag=place_anvil] at @s align xyz positioned ~.5 ~ ~.5 run function bts:blocks/anvil/place

tag @s remove block_placed


