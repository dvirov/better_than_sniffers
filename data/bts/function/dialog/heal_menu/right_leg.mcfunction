    
    

execute if score @s R.leg matches ..2 run data modify storage temp parts_health.rightleg_trigger set value '"click_event":{"action":"run_command","command":"trigger heal.dialog set 6"},"hover_event":{"action":"show_text","value":{"translate":"dialog.healing.heal_right_leg",fallback:"Heal Right Leg"}}'
execute if score @s R.leg matches 3.. run data modify storage temp parts_health.rightleg_trigger set value ""

execute if score @s R.leg matches 3.. run data modify storage temp parts_health.rightleg_edge set value "묁묁묁"
execute if score @s R.leg matches 3.. run data modify storage temp parts_health.rightleg_main set value "묁묀묁"
execute if score @s R.leg matches 2 run data modify storage temp parts_health.rightleg_edge set value "\uBB02\uF801\uBB02\uF801\uBB02"
execute if score @s R.leg matches 2 run data modify storage temp parts_health.rightleg_main set value "\uBB02\uF801\uBB03\uF801\uBB02"
execute if score @s R.leg matches 1 run data modify storage temp parts_health.rightleg_edge set value "\uBB05\uF801\uBB05\uF801\uBB05"
execute if score @s R.leg matches 1 run data modify storage temp parts_health.rightleg_main set value "\uBB05\uF801\uBB04\uF801\uBB05"
execute if score @s R.leg matches ..0 run data modify storage temp parts_health.rightleg_edge set value "\uBB07\uF801\uBB07\uF801\uBB07"
execute if score @s R.leg matches ..0 run data modify storage temp parts_health.rightleg_main set value "\uBB07\uF801\uBB06\uF801\uBB07"