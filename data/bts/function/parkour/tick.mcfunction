attribute @s gravity base set 0.08
execute if score @s bar_stamina matches 0 run return 0

# Wall run
execute if predicate bts:parkour/wall_run rotated ~ 0 unless block ^-1 ^ ^ #bts:transparent if block ~ ~-1.2 ~ #bts:transparent run function bts:parkour/wall_run
execute if predicate bts:parkour/wall_run rotated ~ 0 unless block ^1 ^ ^ #bts:transparent if block ~ ~-1.2 ~ #bts:transparent run function bts:parkour/wall_run
execute if predicate bts:parkour/wall_run rotated ~ 0 unless block ^ ^ ^1 #bts:transparent if block ~ ~-1.2 ~ #bts:transparent run function bts:parkour/wall_run


execute if predicate bts:parkour/roll if score @s bar_stamina matches 10.. unless block ~ ~-3 ~ #bts:transparent if block ~ ~-1 ~ #bts:transparent if block ~ ~-2 ~ #bts:transparent run function bts:parkour/roll
execute if entity @s[tag=roll] run function bts:parkour/roll

# wall edge climb
execute if entity @s[x_rotation=-30..30] anchored eyes if block ~ ~-.5 ~ #bts:transparent if block ^ ^ ^1 #bts:transparent unless block ^ ^-1 ^.5 #bts:transparent run function bts:parkour/wall_climb
