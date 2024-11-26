#run once when trigger
advancement revoke @s only bts:trigger/block/cake

tag @s add block_placed

execute as @e[type=item_frame,tag=place_cake] at @s align xyz run function bts:blocks/foods/cake/place

tag @s remove block_placed

