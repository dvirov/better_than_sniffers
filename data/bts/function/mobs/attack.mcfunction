effect give @s speed 20 1 true
execute on passengers run data modify entity @s AngerTime set value 100
execute on passengers run data modify entity @s AngryAt set from entity @p UUID
execute on passengers run attribute @s follow_range base set 15
execute on passengers run tag @s add hurt_animal 
execute on passengers run scoreboard players set @s timer 400