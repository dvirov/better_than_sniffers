# activate from advancement
# as player
advancement revoke @s only bts:trigger/health/use_heal_item
#scoreboard players add @s item.use 1
#execute unless score @s item.use matches 75.. run return 0
#item modify entity @s weapon.mainhand bts:add1
#item modify entity @s weapon.mainhand bts:delete_item
#scoreboard players set @s item.use 0 
execute store result score @s healing run data get entity @s SelectedItem.components.minecraft:custom_data.healing_data.amount
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{"healing_data":{}}] store result score @s healing run data get entity @s equipment.offhand.components.minecraft:custom_data.healing_data.amount

#execute if score @s heal.dialog matches 1.. run function bts:world_event/health/heal/heal_general
scoreboard players enable @s heal.dialog
#dialog show @s bts:heal_menu


function bts:dialog/heal_menu/head
function bts:dialog/heal_menu/left_arm
function bts:dialog/heal_menu/body
function bts:dialog/heal_menu/right_arm
function bts:dialog/heal_menu/left_leg
function bts:dialog/heal_menu/right_leg

function bts:dialog/heal_menu/heal_dialog_macro with storage temp parts_health

