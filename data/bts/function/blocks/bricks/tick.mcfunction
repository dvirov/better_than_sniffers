
execute as @s[type=marker,tag=bricks] at @s run function bts:blocks/bricks/is_empty
execute as @s[type=interaction,tag=custom_block,tag=has_brick] at @s unless score @s timer matches 24000.. run function bts:blocks/bricks/dry_controller
