$dialog show @s \
{"type":"minecraft:notice","title":["   뀁뀂  뀃뀄뀅뀆뀇      뀈","                  낡낢낣낤낥낦낧남","                  낱낲낳내낵낶낷낸","                  냁냂냃냄 냅냆냇냈"],\
"body":[{"type":"minecraft:plain_message","contents":{"text":"Choose "}},\
{"type":"minecraft:plain_message","contents":\
[[{"text":"$(head)\n",$(head_trigger)},\
{"text":"","extra":[["\n",\
{"text":"$(leftarm_edge)",$(leftarm_trigger)},\
{"text":" $(body_edge) ",$(body_trigger)},\
{"text":"$(rightarm_edge)",$(rightarm_trigger)}],["\n",\
{"text":"$(leftarm_main)",$(leftarm_trigger)},\
{"text":" $(body_main) ",$(body_trigger)},\
{"text":"$(rightarm_main)",$(rightarm_trigger)}],["\n",\
{"text":"$(leftarm_main)",$(leftarm_trigger)},\
{"text":" $(body_main) ",$(body_trigger)},\
{"text":"$(rightarm_main)",$(rightarm_trigger)}],["\n",\
{"text":"$(leftarm_main)",$(leftarm_trigger)},\
{"text":" $(body_main) ",$(body_trigger)},\
{"text":"$(rightarm_main)",$(rightarm_trigger)}],["\n",\
{"text":"$(leftarm_main)",$(leftarm_trigger)},\
{"text":" $(body_main) ",$(body_trigger)},\
{"text":"$(rightarm_main)",$(rightarm_trigger)}],["\n",\
{"text":"$(leftarm_main)",$(leftarm_trigger)},\
{"text":" $(body_main) ",$(body_trigger)},\
{"text":"$(rightarm_main)",$(rightarm_trigger)}],["\n",\
{"text":"$(leftarm_edge)",$(leftarm_trigger)},\
{"text":" $(body_main) ",$(body_trigger)},\
{"text":"$(rightarm_edge)",$(rightarm_trigger)}],["\n",\
{"text":" $(body_edge) ",$(body_trigger)}]]},\
{"text":"","extra":[["\n\n",\
{"text":"$(leftleg_edge)",$(leftleg_trigger)},\
{"text":"$(rightleg_edge)",$(rightleg_trigger)}],["\n",\
{"text":"$(leftleg_main)",$(leftleg_trigger)},\
{"text":"$(rightleg_main)",$(rightleg_trigger)}],["\n",\
{"text":"$(leftleg_main)",$(leftleg_trigger)},\
{"text":"$(rightleg_main)",$(rightleg_trigger)}],["\n",\
{"text":"$(leftleg_main)",$(leftleg_trigger)},\
{"text":"$(rightleg_main)",$(rightleg_trigger)}],["\n",\
{"text":"$(leftleg_main)",$(leftleg_trigger)},\
{"text":"$(rightleg_main)",$(rightleg_trigger)}],["\n",\
{"text":"$(leftleg_main)",$(leftleg_trigger)},\
{"text":"$(rightleg_main)",$(rightleg_trigger)}],["\n",\
{"text":"$(leftleg_edge)",$(leftleg_trigger)},\
{"text":"$(rightleg_edge)",$(rightleg_trigger)}\
\
\
]]}]]}],"can_close_with_escape":true,"pause":false,"after_action":"close","action":{"label":"Quick Heal","action":{"type":"minecraft:run_command","command":"trigger heal.dialog set 7"}}}




