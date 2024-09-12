
#super cold
execute if score @s bar_temprature matches ..-50 run item modify entity @s enderchest.1 datapack:custombars/temperature0
#cold
execute if score @s bar_temprature matches -50..0 run item modify entity @s enderchest.1 datapack:custombars/temperature1

#hote
execute if score @s bar_temprature matches 50..100 run item modify entity @s enderchest.1 datapack:custombars/temperature2
#super hot
execute if score @s bar_temprature matches 100.. run item modify entity @s enderchest.1 datapack:custombars/temperature3
