advancement revoke @s only bts:trigger/brick_remove

tag @s add this

execute as @e[type=interaction,distance=..6,tag=bricks,tag=has_brick] at @s run function bts:blocks/bricks/find_attacked

tag @s remove this
