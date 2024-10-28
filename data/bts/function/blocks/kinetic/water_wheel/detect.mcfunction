#run once when trigger
advancement revoke @s only bts:trigger/block/water_wheel
say detected
execute as @e[type=item_frame,tag=place_water_wheel,nbt={Facing:0b}] at @s positioned ~ ~-0.9 ~ run function bts:blocks/kinetic/water_wheel/place_y
execute as @e[type=item_frame,tag=place_water_wheel,nbt={Facing:1b}] at @s positioned ~ ~-0.1 ~ run function bts:blocks/kinetic/water_wheel/place_y
execute as @e[type=item_frame,tag=place_water_wheel,nbt={Facing:2b}] at @s positioned ~ ~ ~.1 run function bts:blocks/kinetic/water_wheel/place_z
execute as @e[type=item_frame,tag=place_water_wheel,nbt={Facing:3b}] at @s positioned ~ ~ ~0.9 run function bts:blocks/kinetic/water_wheel/place_z
execute as @e[type=item_frame,tag=place_water_wheel,nbt={Facing:4b}] at @s positioned ~-0.9 ~ ~ run function bts:blocks/kinetic/water_wheel/place_x
execute as @e[type=item_frame,tag=place_water_wheel,nbt={Facing:5b}] at @s positioned ~0.9 ~ ~ run function bts:blocks/kinetic/water_wheel/place_x


