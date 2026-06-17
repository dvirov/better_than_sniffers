# run from function show_ui_bars



scoreboard players operation @s bar_sanity = @s bar_sanity_calc
scoreboard players operation @s bar_sanity /= .100 values 

execute if score @s bar_sanity_calc matches 2090.. run scoreboard players set @s bar_sanity_calc 2090
execute if score @s bar_sanity_calc matches ..90 run scoreboard players set @s bar_sanity_calc 90
execute if score @s bar_sanity matches 20.. run scoreboard players set @s bar_sanity 20
execute if score @s bar_sanity matches ..0 run scoreboard players set @s bar_sanity 0


execute if score @s bar_sanity matches 0 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA000        "}
execute if score @s bar_sanity matches 1 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA001        "}
execute if score @s bar_sanity matches 2 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA002        "}
execute if score @s bar_sanity matches 3 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA003        "}
execute if score @s bar_sanity matches 4 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA004        "}
execute if score @s bar_sanity matches 5 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA005        "}
execute if score @s bar_sanity matches 6 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA006        "}
execute if score @s bar_sanity matches 7 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA007        "}
execute if score @s bar_sanity matches 8 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA008        "}
execute if score @s bar_sanity matches 9 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA009        "}
execute if score @s bar_sanity matches 10 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA010        "}
execute if score @s bar_sanity matches 11 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA011        "}
execute if score @s bar_sanity matches 12 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA012        "}
execute if score @s bar_sanity matches 13 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA013        "}
execute if score @s bar_sanity matches 14 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA014        "}
execute if score @s bar_sanity matches 15 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA015        "}
execute if score @s bar_sanity matches 16 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA016        "}
execute if score @s bar_sanity matches 17 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA017        "}
execute if score @s bar_sanity matches 18 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA018        "}
execute if score @s bar_sanity matches 19 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA019        "}
execute if score @s bar_sanity matches 20 run data modify storage bts:bars sanity set value {"shadow_color":0,"text":"     \uF80B\uF809\uA020        "}


execute if score @s bar_sanity_calc matches ..1700 run function bts:world_event/bars_calc/sanity/tick

