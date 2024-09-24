scoreboard players remove @s bar_stamina_cd 1
execute if score @s bar_stamina_cd matches ..0 run scoreboard players remove @s bar_stamina 1
execute if score @s bar_stamina_cd matches ..0 run scoreboard players set @s bar_stamina_cd 20

execute if score @s bar_stamina matches ..0 run effect give @s hunger 3 1
execute if score @s bar_stamina matches ..0 run effect give @s slowness 3 2