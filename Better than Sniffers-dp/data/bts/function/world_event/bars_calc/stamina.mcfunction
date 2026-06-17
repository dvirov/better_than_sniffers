scoreboard players remove @s bar_stamina_cd 1
execute if predicate bts:is_jumping if score @s bar_stamina_cd matches ..0 run scoreboard players remove @s bar_stamina_cd 3
execute if score @s bar_stamina_cd matches ..0 run scoreboard players remove @s bar_stamina 1
execute if score @s bar_stamina_cd matches ..0 run scoreboard players set @s bar_stamina_cd 16

execute if score @s bar_stamina matches ..0 run effect give @s hunger 3 1 true
execute if score @s bar_stamina matches ..0 run effect give @s slowness 3 2 true

