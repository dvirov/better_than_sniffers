item replace entity @s saddle with barrier[equippable={slot:saddle,equip_sound:"minecraft:block.barrel.open",swappable:false,}]
execute if score @s bar_temperature matches 75.. run item modify entity @s saddle bts:ignite_player

execute if score @s bar_temperature matches ..70 run item modify entity @s saddle bts:unignite_player



