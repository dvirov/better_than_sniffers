advancement revoke @s only bts:trigger/block/campfire

execute as @e[type=item_frame,tag=place_campfire] at @s align xyz positioned ~.5 ~.03 ~.5 run function bts:blocks/campfire/place


#execute as @a at @s as @e[distance=..30,type=item_frame,tag=place_campfire] at @s align xyz positioned ~0.5 ~0.03 ~0.5 run function bts:blocks/campfire/place

