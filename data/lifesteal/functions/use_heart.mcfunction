execute if score @s ls_maxHealth matches ..39 run tellraw @s [{"text": "Yo you got a heart!", "color": "green"}]
execute if score @s ls_maxHealth matches ..39 run function lifesteal:actions/increase
execute if score @s ls_maxHealth matches ..39 run clear @s warped_fungus_on_a_stick{CustomModelData: 69420} 1

execute if score @s ls_maxHealth matches 40.. run tellraw @s [{"text": "You are at maximum health dude", "color": "red"}]
scoreboard players set @s ls_usedHeart 0