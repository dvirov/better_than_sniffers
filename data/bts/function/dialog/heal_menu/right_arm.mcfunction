    
    

execute if score @s R.arm matches ..1 run data modify storage temp parts_health.rightarm_trigger set value '"click_event":{"action":"run_command","command":"trigger heal.dialog set 4"},"hover_event":{"action":"show_text","value":{"text":"Heal Right Arm"}}'
execute if score @s R.arm matches 2.. run data modify storage temp parts_health.rightarm_trigger set value ""

execute if score @s R.arm matches 2.. run data modify storage temp parts_health.rightarm_edge set value "묁묁묁"
execute if score @s R.arm matches 2.. run data modify storage temp parts_health.rightarm_main set value "묁묀묁"
execute if score @s R.arm matches 1 run data modify storage temp parts_health.rightarm_edge set value "\uBB05\uF801\uBB05\uF801\uBB05"
execute if score @s R.arm matches 1 run data modify storage temp parts_health.rightarm_main set value "\uBB05\uF801\uBB04\uF801\uBB05"
execute if score @s R.arm matches ..0 run data modify storage temp parts_health.rightarm_edge set value "\uBB07\uF801\uBB07\uF801\uBB07"
execute if score @s R.arm matches ..0 run data modify storage temp parts_health.rightarm_main set value "\uBB07\uF801\uBB06\uF801\uBB07"