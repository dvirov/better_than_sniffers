
#super cold
execute if score @s bar_temperature matches ..-50 run item modify entity @s enderchest.1 bts:custombars/temperature0
#cold
execute if score @s bar_temperature matches -50..0 run item modify entity @s enderchest.1 bts:custombars/temperature1

#hote
execute if score @s bar_temperature matches 0..50 run item modify entity @s enderchest.1 bts:custombars/temperature2
#super hot
execute if score @s bar_temperature matches 50.. run item modify entity @s enderchest.1 bts:custombars/temperature3
