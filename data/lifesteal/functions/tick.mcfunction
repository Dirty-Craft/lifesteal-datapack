# Restore previous base health if just respawned
execute as @a[scores={ls_sinceDeath=0}] run function lifesteal:actions/sync

# Store current max health
execute as @a store result score @s ls_maxHealth run attribute @s generic.max_health get

# Check if the player is killable and give him the custom advancement
execute as @a[scores={ls_maxHealth=7.., ls_playTime=36000.., ls_sinceDeath=18000..}, advancements={lifesteal:killable_advancement=false}] run advancement grant @s only lifesteal:killable_advancement
execute as @a[scores={ls_maxHealth=..6}, advancements={lifesteal:killable_advancement=true}] run advancement revoke @s only lifesteal:killable_advancement
execute as @a[scores={ls_sinceDeath=..18000}, advancements={lifesteal:killable_advancement=true}] run advancement revoke @s only lifesteal:killable_advancement

# Checks if a player has been killed and then takes a life from him
function lifesteal:lifesteal_victim

# Use heart
execute as @a[scores={ls_usedHeart=1..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag: {CustomModelData: 69420}}}, advancements={lifesteal:disabled_advancement=false}] at @s run function lifesteal:use_crafted_heart
execute as @a[scores={ls_usedHeart=1..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag: {CustomModelData: 69421}}}, advancements={lifesteal:disabled_advancement=false}] at @s run function lifesteal:use_natural_heart

# Store current max health again
execute as @a store result score @s ls_maxHealth run attribute @s generic.max_health get

# Enable extract life command
scoreboard players enable @a ls_extlf
execute as @a[scores={ls_extlf=1}, advancements={lifesteal:disabled_advancement=false}] at @s run function lifesteal:extract_life

# Resets all of the scores
scoreboard players set @a ls_killedPlayer 0
scoreboard players set @a ls_death 0
scoreboard players set @a ls_extlf 0
