#execute if score @s bar_temperature matches -69.. run item modify entity @s armor.feet bts:custombars/overlay_remove
#
#execute if score @s bar_temperature matches -69 run stopsound @s * minecraft:item.armor.equip_leather
#execute if score @s bar_temperature matches -69 run stopsound @s * minecraft:item.armor.equip_chain
#execute if score @s bar_temperature matches -69 run stopsound @s * minecraft:item.armor.equip_gold
#execute if score @s bar_temperature matches -69 run stopsound @s * minecraft:item.armor.equip_diamond
#execute if score @s bar_temperature matches -69 run stopsound @s * minecraft:item.armor.equip_netherite

execute unless score @s bar_temperature matches ..-70 run return 0
#item modify entity @s armor.feet bts:custombars/overlay_freeze

#data modify storage screen main_effect append value "\uD100"

#title @p times 0 3s 1s

execute if score @s bar_temperature matches ..-70 run effect give @s slowness 1 0 true
execute if score @s bar_temperature matches ..-80 run effect give @s slowness 1 1 true
execute if score @s bar_temperature matches ..-90 run effect give @s slowness 1 2 true
execute if score @s bar_temperature matches ..-100 run effect give @s slowness 1 3 true
execute if score @s bar_temperature matches ..-110 run effect give @s slowness 1 4 true
execute if score @s bar_temperature matches ..-120 run effect give @s slowness 1 5 true

execute if score .20tick.delay delay matches 20 run damage @s 1 freeze
