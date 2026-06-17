advancement revoke @s only bts:trigger/hoe
item replace entity @s weapon.mainhand with iron_hoe 1
item modify entity @s weapon bts:hoe
function bts:item_use/item_damage
execute positioned ~ ~0.1 ~ if block ~1 ~ ~1 #crops run setblock ~1 ~ ~1 air destroy
execute positioned ~ ~0.1 ~ if block ~ ~ ~1 #crops run setblock ~ ~ ~1 air destroy
execute positioned ~ ~0.1 ~ if block ~-1 ~ ~1 #crops run setblock ~-1 ~ ~1 air destroy
execute positioned ~ ~0.1 ~ if block ~1 ~ ~ #crops run setblock ~1 ~ ~ air destroy
execute positioned ~ ~0.1 ~ if block ~ ~ ~ #crops run setblock ~ ~ ~ air destroy
execute positioned ~ ~0.1 ~ if block ~-1 ~ ~ #crops run setblock ~-1 ~ ~ air destroy
execute positioned ~ ~0.1 ~ if block ~1 ~ ~-1 #crops run setblock ~1 ~ ~-1 air destroy
execute positioned ~ ~0.1 ~ if block ~0 ~ ~-1 #crops run setblock ~0 ~ ~-1 air destroy
execute positioned ~ ~0.1 ~ if block ~-1 ~ ~-1 #crops run setblock ~-1 ~ ~-1 air destroy



say detect
