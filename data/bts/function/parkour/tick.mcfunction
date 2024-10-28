attribute @s gravity base set 0.08
execute if predicate bts:parkour/wall_run rotated ~ 0 unless block ^-1 ^ ^ air if block ~ ~-1 ~ air run function bts:parkour/wall_run
execute if predicate bts:parkour/wall_run rotated ~ 0 unless block ^1 ^ ^ air if block ~ ~-1 ~ air run function bts:parkour/wall_run
execute if predicate bts:parkour/wall_run rotated ~ 0 unless block ^ ^ ^1 air if block ~ ~-1 ~ air run function bts:parkour/wall_run


execute if predicate bts:parkour/roll if score @s bar_stamina matches 10.. unless block ~ ~-3 ~ air if block ~ ~-1 ~ air if block ~ ~-2 ~ air run function bts:parkour/roll
execute if entity @s[tag=roll] run function bts:parkour/roll