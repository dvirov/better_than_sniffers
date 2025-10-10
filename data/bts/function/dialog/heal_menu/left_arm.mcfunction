    
    
#full health
execute if score @s L.arm matches ..1 run data modify storage temp parts_health.leftarm_trigger set value '"click_event":{"action":"run_command","command":"trigger heal.dialog set 2"},"hover_event":{"action":"show_text","value":{"text":"Heal Left Arm"}}'
execute if score @s L.arm matches 2.. run data modify storage temp parts_health.leftarm_trigger set value ""

execute if score @s L.arm matches 2.. run data modify storage temp parts_health.leftarm_edge set value "묁묁묁"
execute if score @s L.arm matches 2.. run data modify storage temp parts_health.leftarm_main set value "묁묀묁"
execute if score @s L.arm matches 1 run data modify storage temp parts_health.leftarm_edge set value "\uBB05\uF801\uBB05\uF801\uBB05"
execute if score @s L.arm matches 1 run data modify storage temp parts_health.leftarm_main set value "\uBB05\uF801\uBB04\uF801\uBB05"
execute if score @s L.arm matches ..0 run data modify storage temp parts_health.leftarm_edge set value "\uBB07\uF801\uBB07\uF801\uBB07"
execute if score @s L.arm matches ..0 run data modify storage temp parts_health.leftarm_main set value "\uBB07\uF801\uBB06\uF801\uBB07"