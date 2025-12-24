function bts:calender/load
function bts:world_event/sound/load
function bts:mobs/load
function bts:item_use/potions/effects/load
function bts:world_event/health/load
function bts:blocks/crucible/load
team add blue
team modify blue color blue
difficulty hard

scoreboard objectives add temp dummy

scoreboard objectives add sleep.dialog trigger
scoreboard objectives add close.dialog trigger
scoreboard objectives add heal.dialog trigger
scoreboard players enable @a close.dialog

scoreboard objectives add delay dummy
scoreboard objectives add in_structure dummy

scoreboard objectives add tp_timer dummy
scoreboard objectives add fieldboss dummy

scoreboard objectives add eat.vegetables dummy
scoreboard objectives add eat.fruit dummy
scoreboard objectives add eat.cooked.meat dummy
scoreboard objectives add eat.raw.meat dummy

scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add sleeping minecraft.custom:minecraft.time_since_rest
scoreboard objectives add deathdetector deathCount
scoreboard objectives add air air
scoreboard objectives add saturation food
scoreboard objectives add raycast dummy
scoreboard objectives add scuklpting dummy
scoreboard objectives add campfire_time dummy
scoreboard objectives add campfire_time_ticks dummy
scoreboard objectives add time_in_dark dummy
scoreboard objectives add near_light_block dummy
scoreboard objectives add near_lit_campfire dummy
scoreboard objectives add campfire_place dummy
scoreboard objectives add timer dummy
scoreboard objectives add nutrition_temp dummy
scoreboard objectives add saturation_temp dummy
scoreboard objectives add nutrition_clc dummy
scoreboard objectives add saturation_clc dummy
scoreboard objectives add potion_duration_clc dummy
scoreboard objectives add potion_duration_temp dummy
scoreboard objectives add item.damage dummy
scoreboard objectives add item.use dummy
gamerule minecraft:players_sleeping_percentage 101
gamerule spawn_phantoms false
gamerule natural_health_regeneration false
gamerule max_snow_accumulation_height 7
gamerule water_source_conversion false

gamerule players_nether_portal_default_delay 999999999

scoreboard objectives add bar_stamina dummy
scoreboard objectives add bar_stamina_cd dummy
scoreboard objectives add bar_temperature dummy
scoreboard objectives add temperature_calc dummy
scoreboard objectives add insulation_vaule dummy
scoreboard objectives add wetness dummy
scoreboard objectives add temperature_insulation_delay dummy
scoreboard objectives add bar_sanity dummy
scoreboard objectives add bar_sanity_calc dummy
scoreboard objectives add sanity.effect.timer dummy


scoreboard objectives add storage_pot.cd dummy
scoreboard objectives add anvil.cd dummy
scoreboard objectives add anvil.hit dummy

scoreboard objectives add bool dummy
scoreboard objectives add crafting.progress dummy


# settings 
scoreboard objectives add settings.custom_sounds dummy

scoreboard objectives add pack.settings dummy
execute if score .developer pack.settings matches 1 run tellraw @a {color:dark_red ,text:"Developer mode is active !"}

execute if score .developer pack.settings matches 0 run gamerule reduced_debug_info true
execute if score .developer pack.settings matches 0 run gamerule send_command_feedback false

execute if score .developer pack.settings matches 1 run gamerule reduced_debug_info false
execute if score .developer pack.settings matches 1 run gamerule send_command_feedback true



scoreboard objectives add slowcast.steps dummy
scoreboard objectives add slowcast.duration dummy


#USUSED

# scoreboard objectives add ylevel dummy
# scoreboard objectives add oxygen_time dummy
# 
# scoreboard objectives add drying_time dummy
# 
# scoreboard objectives add brightness.block dummy





#scoreboard objectives add barrel.open dummy


#scoreboard objectives add breakpoppy minecraft.broken:minecraft.poppy
#scoreboard objectives add breakdandelion minecraft.broken:minecraft.dandelion



