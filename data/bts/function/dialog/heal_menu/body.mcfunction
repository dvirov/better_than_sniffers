    
    
#full health

execute if score @s Body matches ..5 run data modify storage temp parts_health.body_trigger set value '"click_event":{"action":"run_command","command":"trigger heal.dialog set 3"},"hover_event":{"action":"show_text","value":{"text":"Heal Body"}}'
execute if score @s Body matches 6.. run data modify storage temp parts_health.body_trigger set value ''

execute if score @s Body matches 6.. run data modify storage temp parts_health.body_edge set value "묁묁묁묁묁묁"
execute if score @s Body matches 6.. run data modify storage temp parts_health.body_main set value "묁묀묀묀묀묁"
execute if score @s Body matches 3..5 run data modify storage temp parts_health.body_edge set value "\uBB02\uF801\uBB02\uF801\uBB02\uF801\uBB02\uF801\uBB02\uF801\uBB02"
execute if score @s Body matches 3..5 run data modify storage temp parts_health.body_main set value "\uBB02\uF801\uBB03\uF801\uBB03\uF801\uBB03\uF801\uBB03\uF801\uBB02"
execute if score @s Body matches 1..2 run data modify storage temp parts_health.body_edge set value "\uBB05\uF801\uBB05\uF801\uBB05\uF801\uBB05\uF801\uBB05\uF801\uBB05"
execute if score @s Body matches 1..2 run data modify storage temp parts_health.body_main set value "\uBB05\uF801\uBB04\uF801\uBB04\uF801\uBB04\uF801\uBB04\uF801\uBB05"
execute if score @s Body matches ..0 run data modify storage temp parts_health.body_edge set value "\uBB07\uF801\uBB07\uF801\uBB07\uF801\uBB07\uF801\uBB07\uF801\uBB07"
execute if score @s Body matches ..0 run data modify storage temp parts_health.body_main set value "\uBB07\uF801\uBB06\uF801\uBB06\uF801\uBB06\uF801\uBB06\uF801\uBB07"