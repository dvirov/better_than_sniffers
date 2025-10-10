execute if score @s crafting.progress matches 21..42 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[1]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 42..64 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[2]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 64..86 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[3]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 86..108 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[4]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 108..130 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[5]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 130..152 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[6]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 152..174 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[7]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 174..196 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[8]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 196..218 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[9]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 218..240 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[10]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 240..262 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[11]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 262..284 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[12]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 284..306 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[13]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 306..328 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[14]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 328..350 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[15]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 350..372 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[16]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 372..394 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[17]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 394..420 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[18]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]


execute unless score @s crafting.progress matches 420.. run return run function bts:blocks/crafting_time
scoreboard players set @s crafting.progress 0

playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~

item replace block ~ ~ ~ container.26 with barrier[item_model="air",max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={cooking:1b}] 1




#add fallback values
data remove storage temp potion
data modify storage temp potion.name2 set value "None" 
data modify storage temp potion.name3 set value "None" 
data modify storage temp potion.effect2 set value "none"
data modify storage temp potion.effect3 set value "none"
scoreboard players set num.tmp potion_duration_clc 0

#set effect 1
data modify storage temp potion.effect1 set from block ~ ~ ~ Items.[{Slot:5b}].components.minecraft:custom_data.alchemy.effect1
data modify storage temp potion.name1 set from block ~ ~ ~ Items.[{Slot:5b}].components.minecraft:custom_data.alchemy.name1
data modify storage temp potion.color1 set from block ~ ~ ~ Items.[{Slot:5b}].components.minecraft:custom_data.alchemy.color1

#roll effct 2 and 3
execute if predicate bts:world_event/rng0.5 run function bts:blocks/alchemy/recipe/custom/slot2_1
execute if predicate bts:world_event/rng0.5 run function bts:blocks/alchemy/recipe/custom/slot2_2
execute if predicate bts:world_event/rng0.2 run function bts:blocks/alchemy/recipe/custom/slot3_1
execute if predicate bts:world_event/rng0.2 run function bts:blocks/alchemy/recipe/custom/slot3_2

#calculate potion duration via quality
execute store result score num.tmp potion_duration_temp run data get block ~ ~ ~ Items.[{Slot:0b}].components.minecraft:custom_data.alchemy.quality
scoreboard players operation num.tmp potion_duration_clc += num.tmp potion_duration_temp
execute store result score num.tmp potion_duration_temp run data get block ~ ~ ~ Items.[{Slot:3b}].components.minecraft:custom_data.alchemy.quality
scoreboard players operation num.tmp potion_duration_clc += num.tmp potion_duration_temp
execute store result score num.tmp potion_duration_temp run data get block ~ ~ ~ Items.[{Slot:5b}].components.minecraft:custom_data.alchemy.quality
scoreboard players operation num.tmp potion_duration_clc += num.tmp potion_duration_temp
execute store result score num.tmp potion_duration_temp run data get block ~ ~ ~ Items.[{Slot:11b}].components.minecraft:custom_data.alchemy.quality
scoreboard players operation num.tmp potion_duration_clc += num.tmp potion_duration_temp
execute store result score num.tmp potion_duration_temp run data get block ~ ~ ~ Items.[{Slot:15b}].components.minecraft:custom_data.alchemy.quality
scoreboard players operation num.tmp potion_duration_clc += num.tmp potion_duration_temp

# temp
scoreboard players operation num.tmp potion_duration_temp = num.tmp potion_duration_clc

#roll duration for additional effects
execute store result score rng values run random value 90..110
scoreboard players operation num.tmp potion_duration_clc *= rng values
execute store result score rng values run random value 1..6
scoreboard players operation num.tmp potion_duration_clc /= rng values
execute store result storage temp potion.seconds1 int 1 run scoreboard players get num.tmp potion_duration_clc
execute store result storage temp potion.duration1 int 20 run scoreboard players get num.tmp potion_duration_clc
execute store result score rng values run random value 3..5
scoreboard players operation num.tmp potion_duration_clc /= rng values
execute store result storage temp potion.duration2 int 20 run scoreboard players get num.tmp potion_duration_clc
execute store result storage temp potion.seconds2 int 1 run scoreboard players get num.tmp potion_duration_clc
execute store result score rng values run random value 2..4
scoreboard players operation num.tmp potion_duration_clc /= rng values
execute store result storage temp potion.duration3 int 20 run scoreboard players get num.tmp potion_duration_clc
execute store result storage temp potion.seconds3 int 1 run scoreboard players get num.tmp potion_duration_clc

#applay catalyst break chance
data modify storage temp potion.catalyst_break_chance set from block ~ ~ ~ Items.[{Slot:0b}].components.minecraft:custom_data.alchemy.break_chance
function bts:blocks/alchemy/recipe/custom/break_catalyst with storage temp potion

#modify seconds to time for display in item lore
function bts:blocks/alchemy/recipe/custom/timer with storage temp potion

#fix some missing values
execute if data storage temp {potion:{name2:"None"}} run data modify storage temp potion.seconds2 set value "" 
execute if data storage temp {potion:{name3:"None"}} run data modify storage temp potion.seconds3 set value "" 
execute if data storage temp {potion:{name2:"None"}} run data modify storage temp potion.time2 set value "" 
execute if data storage temp {potion:{name3:"None"}} run data modify storage temp potion.time3 set value "" 
execute if data storage temp {potion:{name2:"None"}} run data modify storage temp potion.color2 set value "dark_purple" 
execute if data storage temp {potion:{name3:"None"}} run data modify storage temp potion.color3 set value "dark_purple" 

#create potion item
function bts:blocks/alchemy/recipe/custom/potion with storage temp potion

#delete items
item modify block ~ ~ ~ container.3 bts:delete_item
item modify block ~ ~ ~ container.4 bts:delete_item
item modify block ~ ~ ~ container.5 bts:delete_item
item modify block ~ ~ ~ container.11 bts:delete_item
item modify block ~ ~ ~ container.15 bts:delete_item
