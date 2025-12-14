tag @s add scanned
execute if predicate bts:world_event/rng0.05 run item replace entity @s weapon.mainhand with iron_pickaxe[attribute_modifiers=[{id:"follow_range",type:"follow_range",amount:100,operation:"add_value"},{id:"block_break_speed",type:"block_break_speed",amount:-10,operation:"add_value"}],tooltip_display={hidden_components:["attribute_modifiers"]}] 1


