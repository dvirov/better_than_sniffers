advancement revoke @s only bts:trigger/drink_potion

data remove storage temp potion
scoreboard players set bool.effect1 bool 0
scoreboard players set bool.effect2 bool 0 
scoreboard players set bool.effect3 bool 0

#apply first effect
data modify storage temp potion.num set value 1
data modify storage temp potion.effect set from entity @s SelectedItem.components.minecraft:custom_data.potion_contents.effect1
data modify storage temp potion.seconds set from entity @s SelectedItem.components.minecraft:custom_data.potion_contents.seconds1
execute unless data storage temp {potion:{effect1:none}} run function bts:item_use/potions/effects/apply_effct with storage temp potion

execute store result storage temp potion.seconds int 20 run data get entity @s SelectedItem.components.minecraft:custom_data.potion_contents.seconds1
execute unless score bool.effect1 bool matches 1 run function bts:item_use/potions/effects/custom_potion_effect with storage temp potion

#apply second effect
data modify storage temp potion.num set value 2
data modify storage temp potion.effect set from entity @s SelectedItem.components.minecraft:custom_data.potion_contents.effect2
data modify storage temp potion.seconds set from entity @s SelectedItem.components.minecraft:custom_data.potion_contents.seconds2
execute unless data storage temp {potion:{effect2:none}} run function bts:item_use/potions/effects/apply_effct with storage temp potion

execute store result storage temp potion.seconds int 20 run data get entity @s SelectedItem.components.minecraft:custom_data.potion_contents.seconds2
execute unless score bool.effect2 bool matches 1 run function bts:item_use/potions/effects/custom_potion_effect with storage temp potion

#apply third effect
data modify storage temp potion.num set value 3
data modify storage temp potion.effect set from entity @s SelectedItem.components.minecraft:custom_data.potion_contents.effect3
data modify storage temp potion.seconds set from entity @s SelectedItem.components.minecraft:custom_data.potion_contents.seconds3
execute unless data storage temp {potion:{effect3:none}} run function bts:item_use/potions/effects/apply_effct with storage temp potion

execute store result storage temp potion.seconds int 20 run data get entity @s SelectedItem.components.minecraft:custom_data.potion_contents.seconds3
execute unless score bool.effect3 bool matches 1 run function bts:item_use/potions/effects/custom_potion_effect with storage temp potion
