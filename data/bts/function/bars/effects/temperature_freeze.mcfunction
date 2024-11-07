execute if score @s bar_temperature matches -69.. run item modify entity @s armor.feet bts:custombars/overlay_remove

execute unless score @s bar_temperature matches ..-70 run return 0
item modify entity @s armor.feet bts:custombars/overlay_freeze
effect give @s slowness 1 0 true
item modify entity @s armor.feet bts:custombars/overlay_freeze
damage @s 0.1 freeze
