execute as @a[advancements={lifesteal:disabled_advancement=true}] run function lifesteal:disable
execute as @a[advancements={lifesteal:disabled_advancement=false}] run function lifesteal:enable

schedule function lifesteal:handle_disable 0.5s