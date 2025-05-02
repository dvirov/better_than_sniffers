
  #super cold
#execute if score @s bar_temperature matches ..-70 run item modify entity @s enderchest.1 bts:custombars/temperature0
$execute if score @s bar_temperature matches ..-70 run data modify storage minecraft:$(UUID0)$(UUID1)$(UUID2)$(UUID3) temperature set value {"text":"                    \uE000"}

  #cold
#execute if score @s bar_temperature matches -70..-15 run item modify entity @s enderchest.1 bts:custombars/temperature1
$execute if score @s bar_temperature matches -70..-15 if score @s bar_temperature = @s temperature_calc run data modify storage minecraft:$(UUID0)$(UUID1)$(UUID2)$(UUID3) temperature set value {"text":"                    \uE001"}
$execute if score @s bar_temperature matches -70..-15 if score @s bar_temperature > @s temperature_calc run data modify storage minecraft:$(UUID0)$(UUID1)$(UUID2)$(UUID3) temperature set value {"text":"                    \uE0A3"}
$execute if score @s bar_temperature matches -70..-15 if score @s bar_temperature < @s temperature_calc run data modify storage minecraft:$(UUID0)$(UUID1)$(UUID2)$(UUID3) temperature set value {"text":"                    \uE0A4"}

  #neutral
$execute if score @s bar_temperature matches -15..15 if score @s bar_temperature = @s temperature_calc run data modify storage minecraft:$(UUID0)$(UUID1)$(UUID2)$(UUID3) temperature set value {"text":"                    \uE004"}
$execute if score @s bar_temperature matches -15..15 if score @s bar_temperature > @s temperature_calc run data modify storage minecraft:$(UUID0)$(UUID1)$(UUID2)$(UUID3) temperature set value {"text":"                    \uE0A1"}
$execute if score @s bar_temperature matches -15..15 if score @s bar_temperature < @s temperature_calc run data modify storage minecraft:$(UUID0)$(UUID1)$(UUID2)$(UUID3) temperature set value {"text":"                    \uE0A2"}



 #hot
#execute if score @s bar_temperature matches 15..70 run item modify entity @s enderchest.1 bts:custombars/temperature2
$execute if score @s bar_temperature matches 15..70 if score @s bar_temperature = @s temperature_calc run data modify storage minecraft:$(UUID0)$(UUID1)$(UUID2)$(UUID3) temperature set value {"text":"                    \uE002"}
$execute if score @s bar_temperature matches 15..70 if score @s bar_temperature > @s temperature_calc run data modify storage minecraft:$(UUID0)$(UUID1)$(UUID2)$(UUID3) temperature set value {"text":"                    \uE0A5"}
$execute if score @s bar_temperature matches 15..70 if score @s bar_temperature < @s temperature_calc run data modify storage minecraft:$(UUID0)$(UUID1)$(UUID2)$(UUID3) temperature set value {"text":"                    \uE0A6"}

  #super hot
#execute if score @s bar_temperature matches 70.. run item modify entity @s enderchest.1 bts:custombars/temperature3
$execute if score @s bar_temperature matches 70.. run data modify storage minecraft:$(UUID0)$(UUID1)$(UUID2)$(UUID3) temperature set value {"text":"                    \uE003"}

#execute if score @s bar_temperature matches 70.. if score @s bar_temperature < @s temperature_calc run data modify storage minecraft:1 temperature set value {"text":"                    \uE0A5 "}
#
#execute if score @s bar_temperature < @s temperature_calc run scoreboard players add @s bar_temperature 1
#execute if score @s bar_temperature > @s temperature_calc run scoreboard players remove @s bar_temperature 1
#execute unless score @s bar_temperature = @s temperature_calc