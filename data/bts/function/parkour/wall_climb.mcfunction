
execute if predicate bts:parkour/sneak_notjunp run attribute @s gravity base set 0
execute if predicate bts:parkour/sneak_jump run attribute @s gravity base set -0.001
scoreboard players remove @s bar_stamina_cd 5
