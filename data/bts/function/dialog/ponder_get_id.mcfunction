scoreboard players set @s close.dialog 0

data modify storage temp ponder_id set value "main"
data modify storage temp ponder_id set from entity @s SelectedItem.components.minecraft:custom_data.ponder_id
function bts:dialog/ponder_dialog with storage minecraft:temp

