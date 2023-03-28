# Restore previous base health if just respawned
execute as @a[scores={ls_sinceDeath=0}] run function lifesteal:actions/sync

# Store current max health
execute as @a store result score @s ls_maxHealth run attribute @s generic.max_health get

# Checks if a player has killed another player and then gives him a life
execute as @a[scores={ls_killedPlayer=1.., ls_maxHealth=40..}] run tellraw @s [{"text": "You have too many hearts boi. Slow down", "color": "red"}]
execute as @a[scores={ls_killedPlayer=1.., ls_maxHealth=..39}] run tellraw @s [{"text": "Yo you got a heart!", "color": "green"}]
execute as @a[scores={ls_killedPlayer=1.., ls_maxHealth=..39}] run function lifesteal:actions/increase

# Checks if a player has been killed and then takes a life from him
execute as @a[scores={ls_death=1.., ls_maxHealth=..6}] run tellraw @s [{"text": "You are at minimum heart already, poor guy :(", "color": "red"}]
execute as @a[scores={ls_death=1.., ls_maxHealth=7..}] run tellraw @s [{"text": "Well that's awkard, You lost a heart :(", "color": "red"}]
execute as @a[scores={ls_death=1.., ls_maxHealth=7..}] run function lifesteal:actions/decrease
execute as @a[scores={ls_death=1.., ls_maxHealth=7..}] run effect give @s minecraft:instant_health 1

# Use heart
execute as @a[scores={ls_usedHeart=1..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag: {CustomModelData: 69420}}}] at @s run function lifesteal:use_heart

# Store current max health again
execute as @a store result score @s ls_maxHealth run attribute @s generic.max_health get

# Resets all of the scores
scoreboard players set @a ls_killedPlayer 0
scoreboard players set @a ls_death 0