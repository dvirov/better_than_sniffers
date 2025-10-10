
tag @s add has_brick 
scoreboard players set @s timer 0
execute on passengers run data modify entity @s item.components.minecraft:item_model set value "bts:3d_brick_wet"
execute on passengers if predicate bts:world_event/rng0.5 at @s run rotate @s ~90 ~
playsound minecraft:block.decorated_pot.insert block @a ~ ~ ~

# remove item -- return--
execute as @p[tag=this] if items entity @s weapon.mainhand *[minecraft:custom_data~{id:"clay_ball"}] run return run item modify entity @s weapon.mainhand bts:delete_item
execute as @p[tag=this] if items entity @s weapon.offhand *[minecraft:custom_data~{id:"clay_ball"}] run return run item modify entity @s weapon.offhand bts:delete_item