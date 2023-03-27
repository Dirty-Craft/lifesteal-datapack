# Check if the player doing the killing has less than 40 diamond blocks in their inventory
execute as @a[nbt={Inventory:[{id:"minecraft:diamond_block",Count:40b,Slot:-106b}]}] run function lifesteal:kill_reward_fail

# Check if the player being killed has at least 3 diamond blocks in their inventory
execute as @a[scores={diamond_blocks=..2}] run function lifesteal:kill_reward_fail

# Reward the player doing the killing with a diamond block
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run give @s minecraft:diamond_block

# Take away a diamond block from the player being killed
execute as @a[scores={diamond_blocks=3..}] run clear @s minecraft:diamond_block 1
