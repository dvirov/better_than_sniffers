# run from function show_ui_bars



  #super cold
execute if score @s bar_temperature matches ..-70 run data modify storage bts:bars temperature set value {"shadow_color":0,"text":"                    \uE000"}

  #cold
execute if score @s bar_temperature matches -70..-15 if score @s bar_temperature = @s temperature_calc run data modify storage bts:bars temperature set value {"shadow_color":0,"text":"                    \uE001"}
execute if score @s bar_temperature matches -70..-15 if score @s bar_temperature > @s temperature_calc run data modify storage bts:bars temperature set value {"shadow_color":0,"text":"                    \uE0A3"}
execute if score @s bar_temperature matches -70..-15 if score @s bar_temperature < @s temperature_calc run data modify storage bts:bars temperature set value {"shadow_color":0,"text":"                    \uE0A4"}

  #neutral
execute if score @s bar_temperature matches -15..15 if score @s bar_temperature = @s temperature_calc run data modify storage bts:bars temperature set value {"shadow_color":0,"text":"                    \uE004"}
execute if score @s bar_temperature matches -15..15 if score @s bar_temperature > @s temperature_calc run data modify storage bts:bars temperature set value {"shadow_color":0,"text":"                    \uE0A1"}
execute if score @s bar_temperature matches -15..15 if score @s bar_temperature < @s temperature_calc run data modify storage bts:bars temperature set value {"shadow_color":0,"text":"                    \uE0A2"}



 #hot
execute if score @s bar_temperature matches 15..70 if score @s bar_temperature = @s temperature_calc run data modify storage bts:bars temperature set value {"shadow_color":0,"text":"                    \uE002"}
execute if score @s bar_temperature matches 15..70 if score @s bar_temperature < @s temperature_calc run data modify storage bts:bars temperature set value {"shadow_color":0,"text":"                    \uE0A6"}
execute if score @s bar_temperature matches 15..70 if score @s bar_temperature > @s temperature_calc run data modify storage bts:bars temperature set value {"shadow_color":0,"text":"                    \uE0A5"}

  #super hot
execute if score @s bar_temperature matches 70.. run data modify storage bts:bars temperature set value {"shadow_color":0,"text":"                    \uE003"}

execute if score @s bar_temperature matches ..-70 run function bts:bars/effects/temperature_freeze
execute if score @s bar_temperature matches 70.. run function bts:bars/effects/temperature_burn
