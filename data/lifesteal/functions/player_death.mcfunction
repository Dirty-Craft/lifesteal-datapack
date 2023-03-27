# Check if the player being killed has at least 3 diamond blocks in their inventory
execute as @a[scores={diamond_blocks=..2}] run function lifesteal:kill_reward_fail

# Take away a diamond block from the player being killed
execute as @a[scores={diamond_blocks=3..}] run clear @s minecraft:diamond_block 1
