execute if entity @s[gamemode=creative] run return 0
execute if items entity @s weapon.mainhand *[]

execute store result score #damage item.damage run data get entity @s SelectedItem.components."minecraft:damage"

execute store result storage temp damage.value int 1 run scoreboard players add #damage item.damage 1

execute unless items entity @s weapon.mainhand *[damage~{durability:{min:-999,max:1}}] run return run function bts:item_use/item_damage_macro with storage temp damage
playsound minecraft:entity.item.break
item modify entity @s weapon.mainhand bts:delete_item