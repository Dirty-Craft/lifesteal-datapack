function nnhealth:tick

# Checks if the player joins for the first time
execute as @a store success score @s ls_firstJoin run scoreboard players get @s ls_firstJoin

# Resets the players health if the player joins for the first time
execute as @a[scores={ls_firstJoin=0}] run scoreboard players set @s nnhealth_max 20

# Checks if a player has killed another player and then gives him a life
execute as @a[scores={ls_killedPlayer=1..}] run scoreboard players operation @s nnhealth_max += #DELTA HEART_COUNT

# Checks if a player has been killed and then takes a life from him
execute as @a[scores={ls_death=1..}] run scoreboard players operation @s nnhealth_max -= #DELTA HEART_COUNT
execute as @a[scores={ls_death=1..}] run scoreboard players operation @s nnhealth_mod -= #DELTA HEART_COUNT

# Resets all of the scores
scoreboard players set @a ls_killedPlayer 0
scoreboard players set @a ls_death 0