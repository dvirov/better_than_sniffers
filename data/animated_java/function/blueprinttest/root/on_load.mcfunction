# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.blueprinttest.root] run return 0
execute on passengers if entity @s[tag=aj.blueprinttest.data] unless data entity @s {data:{rigHash: '2882ce42e02d5c7d61950547365de53f97bab31da78e065895a2632c171c5477'}} on vehicle run function animated_java:blueprinttest/root/zzz/0
scoreboard players set @s aj.is_rig_loaded 1