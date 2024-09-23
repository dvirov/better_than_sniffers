#run once when trigger
advancement revoke @s only datapack:trigger/block/crucible

execute as @e[type=item_frame,tag=custom_block,tag=crucible] at @s run function datapack:blocks/crucible/place


