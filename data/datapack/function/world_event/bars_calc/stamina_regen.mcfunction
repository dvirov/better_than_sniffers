scoreboard players add @s bar_stamina_cd 1
execute if score @s bar_stamina_cd matches 20.. run scoreboard players add @s bar_stamina 2
execute if score @s bar_stamina_cd matches 20.. run scoreboard players set @s bar_stamina_cd 0

