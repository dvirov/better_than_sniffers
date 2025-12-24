import json
import os

# --- Configuration ---
TICKS_PER_DAY = 24000
DAYS_PER_SEASON = 12
TOTAL_DAYS = 48
TOTAL_PERIOD = 1152000
OFFSET_SIZE = 2000 

# הגדרת מצבי יום/לילה לפי הבקשה שלך
# True ביום אומר שזה הופך ל-False בלילה, ולהיפך.
logic_states = {
    "minecraft:gameplay/bees_stay_in_hive": {"day_value": False, "night_value": True},
    "minecraft:gameplay/creaking_active": {"day_value": False, "night_value": True},
    "minecraft:gameplay/eyeblossom_open": {"day_value": True, "night_value": False},
    "minecraft:audio/firefly_bush_sounds": {"day_value": False, "night_value": True},
    "minecraft:gameplay/monsters_burn": {"day_value": True, "night_value": False}
}

# שאר קבצי הויזואליה (צבעים ואור) נשארים לפי התבנית הקודמת
visual_template = {
    "minecraft:gameplay/sky_light_level": {"keyframes": [{"ticks": 133, "value": 1}, {"ticks": 11867, "value": 1}, {"ticks": 13670, "value": 0.26666668}, {"ticks": 22330, "value": 0.26666668}], "modifier": "multiply"},
    "minecraft:visual/cloud_color": {"keyframes": [{"ticks": 133, "value": -1}, {"ticks": 11867, "value": -1}, {"ticks": 13670, "value": -15132378}, {"ticks": 22330, "value": -15132378}], "modifier": "multiply"},
    "minecraft:visual/fog_color": {"keyframes": [{"ticks": 133, "value": "#ffffff"}, {"ticks": 11867, "value": "#ffffff"}, {"ticks": 13670, "value": "#0f0f16"}, {"ticks": 22330, "value": "#0f0f16"}], "modifier": "multiply"},
    "minecraft:visual/sky_color": {"keyframes": [{"ticks": 133, "value": "#ffffff"}, {"ticks": 11867, "value": "#ffffff"}, {"ticks": 13670, "value": "#000000"}, {"ticks": 22330, "value": "#000000"}], "modifier": "multiply"},
    "minecraft:visual/sky_light_color": {"keyframes": [{"ticks": 730, "value": "#ffffff"}, {"ticks": 11270, "value": "#ffffff"}, {"ticks": 13140, "value": "#7a7aff"}, {"ticks": 22860, "value": "#7a7aff"}], "modifier": "multiply"},
    "minecraft:visual/sky_light_factor": {"keyframes": [{"ticks": 730, "value": 1}, {"ticks": 11270, "value": 1}, {"ticks": 13140, "value": 0.24}, {"ticks": 22860, "value": 0.24}], "modifier": "multiply"},
    "minecraft:visual/star_brightness": {"keyframes": [{"ticks": 92, "value": 0.037}, {"ticks": 627, "value": 0}, {"ticks": 11373, "value": 0}, {"ticks": 11732, "value": 0.016}, {"ticks": 11959, "value": 0.044}, {"ticks": 12399, "value": 0.143}, {"ticks": 12729, "value": 0.258}, {"ticks": 13228, "value": 0.5}, {"ticks": 22772, "value": 0.5}, {"ticks": 23032, "value": 0.364}, {"ticks": 23356, "value": 0.225}, {"ticks": 23758, "value": 0.101}], "modifier": "maximum"},
    "minecraft:visual/sunrise_sunset_color": {"keyframes": [{"ticks": 71, "value": "#5fefa333"}, {"ticks": 11270, "value": "#00ffe533"}, {"ticks": 11397, "value": "#04fcd833"}, {"ticks": 12732, "value": "#feda6333"}, {"ticks": 13775, "value": "#36be3733"}, {"ticks": 14192, "value": "#00b33333"}, {"ticks": 23757, "value": "#b1e78733"}]}
}

def get_offset(day):
    season = (day // DAYS_PER_SEASON) % 4
    if season == 1: return OFFSET_SIZE
    if season == 3: return -OFFSET_SIZE
    return 0

if not os.path.exists("seasonal_datapack"): os.makedirs("seasonal_datapack")

# 1. יצירת קבצי הלוגיקה (Bees, Creaking, Monsters, וכו')
for track_name, states in logic_states.items():
    new_keyframes = []
    file_short_name = track_name.split('/')[-1]
    for day in range(TOTAL_DAYS):
        offset = get_offset(day)
        day_start = day * TICKS_PER_DAY
        
        # נקודות השינוי מסונכרנות עם תחילת/סוף ה-Jump של השמש
        # שינוי לילה קורה בערך ב-13,000 (מותאם עונתית)
        # שינוי בוקר קורה בערך ב-23,500 (לקראת היום הבא)
        
        transition_to_night = 12600 + offset
        transition_to_day = 23400 # נשאר קבוע יחסית לזריחה
        
        new_keyframes.append({"ticks": int(day_start), "value": states["day_value"]})
        new_keyframes.append({"ticks": int(day_start + transition_to_night), "value": states["night_value"]})
        new_keyframes.append({"ticks": int(day_start + transition_to_day), "value": states["day_value"]})

    new_keyframes.sort(key=lambda x: x["ticks"])
    output = {"period_ticks": TOTAL_PERIOD, "tracks": {track_name: {"keyframes": new_keyframes}}}
    if "bees" in track_name or "monsters" in track_name: # מוסיף את ה-modifier במידת הצורך
        output["tracks"][track_name]["modifier"] = "or"
        
    with open(f"seasonal_datapack/{file_short_name}.json", "w") as f:
        json.dump(output, f, indent=None)

# 2. יצירת קבצי הויזואליה (כפי שהיה קודם)
for track_name, data in visual_template.items():
    new_keyframes = []
    file_short_name = track_name.split('/')[-1]
    for day in range(TOTAL_DAYS):
        offset = get_offset(day)
        day_start = day * TICKS_PER_DAY
        for kf in data["keyframes"]:
            new_tick = day_start + kf["ticks"]
            if 6001 <= kf["ticks"] <= 18001:
                new_tick += offset
            new_entry = kf.copy()
            new_entry["ticks"] = int(new_tick)
            new_keyframes.append(new_entry)
    new_keyframes.sort(key=lambda x: x["ticks"])
    output = {"period_ticks": TOTAL_PERIOD, "tracks": {track_name: {**data, "keyframes": new_keyframes}}}
    with open(f"seasonal_datapack/{file_short_name}.json", "w") as f:
        json.dump(output, f, indent=None)

# 3. יצירת זוויות (Sun, Moon, Star) - כפי שסיכמנו
common_ease = {"cubic_bezier": [0.362, 0.241, 0.638, 0.759]}
sun_angle_keyframes = [{"ticks": 0, "value": 270}]
for d in range(TOTAL_DAYS):
    day_start = d * 24000
    offset = get_offset(d)
    if offset != 0:
        sun_angle_keyframes.append({"ticks": day_start + 12000 + offset, "value": 450})
    sun_angle_keyframes.append({"ticks": (d+1)*24000, "value": 630})
    sun_angle_keyframes.append({"ticks": (d+1)*24000, "value": 270})

with open("seasonal_datapack/sun_angle.json", "w") as f:
    json.dump({"period_ticks": TOTAL_PERIOD, "tracks": {"minecraft:visual/sun_angle": {"ease": common_ease, "keyframes": sun_angle_keyframes}}}, f, indent=None)

moon_keyframes = [{"ticks": kf["ticks"], "value": (kf["value"] - 180)} for kf in sun_angle_keyframes]
with open("seasonal_datapack/moon_angle.json", "w") as f:
    json.dump({"period_ticks": TOTAL_PERIOD, "tracks": {"minecraft:visual/moon_angle": {"ease": common_ease, "keyframes": moon_keyframes}}}, f, indent=None)

with open("seasonal_datapack/star_angle.json", "w") as f:
    json.dump({"period_ticks": TOTAL_PERIOD, "tracks": {"minecraft:visual/star_angle": {"ease": common_ease, "keyframes": moon_keyframes}}}, f, indent=None)

print("Logic files updated and synced with seasonal cycle!")