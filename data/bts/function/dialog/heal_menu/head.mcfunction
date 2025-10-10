    
    
#full health
execute if score @s Head matches ..3 run data modify storage temp parts_health.head_trigger set value '"click_event":{"action":"run_command","command":"trigger heal.dialog set 1"},"hover_event":{"action":"show_text","value":{"text":"Heal Head"}}'
execute if score @s Head matches 4.. run data modify storage temp parts_health.head_trigger set value ""

execute if score @s Head matches 4.. run data modify storage temp parts_health.head set value "묁묁묁묁묁\n묁묀묀묀묁\n묁묀묀묀묁\n묁묀묀묀묁\n묁묁묁묁묁"
execute if score @s Head matches 2..3 run data modify storage temp parts_health.head set value "묂묂묂묂묂\n묂묃묃묃묂\n묂묃묃묃묂\n묂묃묃묃묂\n묂묂묂묂묂"
execute if score @s Head matches ..1 run data modify storage temp parts_health.head set value "묅묅묅묅묅\n묅묄묄묄묅\n묅묄묄묄묅\n묅묄묄묄묅\n묅묅묅묅묅"



