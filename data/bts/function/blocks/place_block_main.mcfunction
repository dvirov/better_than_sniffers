# run from advancement
# run as player
advancement revoke @s only bts:trigger/block/place_custom_block
tag @s add block_placed

execute as @e[type=item_frame,distance=..10,tag=custom_block] at @s align xyz run function bts:blocks/detect_custom_block_main


tag @s remove block_placed
