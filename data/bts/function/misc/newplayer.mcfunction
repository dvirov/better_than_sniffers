attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.jump_strength base set 0.369
attribute @s minecraft:player.block_break_speed base set 0.5
#effect give @s hunger infinite 0 true
item replace entity @p enderchest.0 with apple 1
item replace entity @p enderchest.1 with apple 1
item replace entity @p enderchest.2 with apple 1
scoreboard players set @s bar_sanity_calc 2090
scoreboard players set @s bar_temperature 1
scoreboard players set @s bar_stamina 21
scoreboard players add @s anvil.cd 0

recipe give @s *