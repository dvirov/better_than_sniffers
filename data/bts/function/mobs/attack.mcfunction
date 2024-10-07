effect give @s speed 20 1 true
execute on passengers run data modify entity @s AngerTime set value 100
execute on passengers run data modify entity @s AngryAt set from entity @p UUID
