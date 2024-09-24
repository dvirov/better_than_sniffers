scoreboard players operation @s bar_sanity = @s bar_sanity_calc
scoreboard players operation @s bar_sanity /= .100 values 

execute if score @s bar_sanity_calc matches 2090.. run scoreboard players set @s bar_sanity_calc 2090
execute if score @s bar_sanity_calc matches ..90 run scoreboard players set @s bar_sanity_calc 90
execute if score @s bar_sanity matches 20.. run scoreboard players set @s bar_sanity 20
execute if score @s bar_sanity matches ..0 run scoreboard players set @s bar_sanity 0

execute if score @s bar_sanity matches 0 run item modify entity @s enderchest.0 bts:custombars/sanity0
execute if score @s bar_sanity matches 1 run item modify entity @s enderchest.0 bts:custombars/sanity1
execute if score @s bar_sanity matches 2 run item modify entity @s enderchest.0 bts:custombars/sanity2
execute if score @s bar_sanity matches 3 run item modify entity @s enderchest.0 bts:custombars/sanity3
execute if score @s bar_sanity matches 4 run item modify entity @s enderchest.0 bts:custombars/sanity4
execute if score @s bar_sanity matches 5 run item modify entity @s enderchest.0 bts:custombars/sanity5
execute if score @s bar_sanity matches 6 run item modify entity @s enderchest.0 bts:custombars/sanity6
execute if score @s bar_sanity matches 7 run item modify entity @s enderchest.0 bts:custombars/sanity7
execute if score @s bar_sanity matches 8 run item modify entity @s enderchest.0 bts:custombars/sanity8
execute if score @s bar_sanity matches 9 run item modify entity @s enderchest.0 bts:custombars/sanity9
execute if score @s bar_sanity matches 10 run item modify entity @s enderchest.0 bts:custombars/sanity10
execute if score @s bar_sanity matches 12 run item modify entity @s enderchest.0 bts:custombars/sanity12
execute if score @s bar_sanity matches 11 run item modify entity @s enderchest.0 bts:custombars/sanity11
execute if score @s bar_sanity matches 13 run item modify entity @s enderchest.0 bts:custombars/sanity13
execute if score @s bar_sanity matches 14 run item modify entity @s enderchest.0 bts:custombars/sanity14
execute if score @s bar_sanity matches 15 run item modify entity @s enderchest.0 bts:custombars/sanity15
execute if score @s bar_sanity matches 16 run item modify entity @s enderchest.0 bts:custombars/sanity16
execute if score @s bar_sanity matches 17 run item modify entity @s enderchest.0 bts:custombars/sanity17
execute if score @s bar_sanity matches 18 run item modify entity @s enderchest.0 bts:custombars/sanity18
execute if score @s bar_sanity matches 19 run item modify entity @s enderchest.0 bts:custombars/sanity19
execute if score @s bar_sanity matches 20 run item modify entity @s enderchest.0 bts:custombars/sanity20
