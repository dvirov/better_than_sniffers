advancement revoke @s only bts:trigger/storage_pot

execute if score @s storage_pot.cd matches 1.. run return fail
scoreboard players set @s storage_pot.cd 10
execute unless predicate bts:is_sneaking unless items entity @s weapon.mainhand * anchored eyes run function bts:item_use/cast_get_items
execute if predicate bts:is_sneaking anchored eyes run function bts:item_use/pot_empty
