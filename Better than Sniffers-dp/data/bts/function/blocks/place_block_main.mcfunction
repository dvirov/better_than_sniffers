# run from advancement
# run as player
advancement revoke @s only bts:trigger/block/place_custom_block
#return fail
tag @s add block_placed
execute as @e[distance=..10,tag=custom_block,type=item_frame] at @s align xyz run function bts:blocks/detect_custom_block_main


tag @s remove block_placed
