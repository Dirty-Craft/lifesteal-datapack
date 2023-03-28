function nnhealth:tick

# Checks if the player joins for the first time
execute as @a store success score @s ls_firstJoin run scoreboard players get @s ls_firstJoin

# Resets the players health if the player joins for the first time
execute as @a[scores={ls_firstJoin=0}] run scoreboard players set @s nnhealth_max 20

# Abort if health is less than 6 or larger than 40
execute as @a[scores={nnhealth_max=..6}] if score @s ls_death matches 1.. run tellraw @a [{"text": "You are at minimum heart already, poor guy :(", "color": "red"}]
execute as @a[scores={nnhealth_max=..6}] if score @s ls_death matches 1.. run scoreboard players set @s ls_death 0

execute as @a[scores={nnhealth_max=40..}] if score @s ls_killedPlayer matches 1.. run tellraw @s [{"text": "You have too many hearts boi. Slow down", "color": "red"}]
execute as @a[scores={nnhealth_max=40..}] if score @s ls_killedPlayer matches 1.. run scoreboard players set @s ls_killedPlayer 0


# Checks if a player has killed another player and then gives him a life
execute as @a[scores={ls_killedPlayer=1..}] run tellraw @s [{"text": "Yo you got a heart!", "color": "green"}]
execute as @a[scores={ls_killedPlayer=1..}] run scoreboard players operation @s nnhealth_max += #DELTA HEART_COUNT

# Checks if a player has been killed and then takes a life from him
execute as @a[scores={ls_death=1..}] run tellraw @s [{"text": "Well that's awkard, You lost a heart :(", "color": "red"}]
execute as @a[scores={ls_death=1..}] run scoreboard players operation @s nnhealth_max -= #DELTA HEART_COUNT
execute as @a[scores={ls_death=1..}] run scoreboard players operation @s nnhealth_mod -= #DELTA HEART_COUNT

# Resets all of the scores
scoreboard players set @a ls_killedPlayer 0
scoreboard players set @a ls_death 0