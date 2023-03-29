execute if score @s ls_maxHealth matches ..19 run function lifesteal:life_increase
execute if score @s ls_maxHealth matches ..19 run clear @s warped_fungus_on_a_stick{CustomModelData: 69420} 1

execute if score @s ls_maxHealth matches 20.. run tellraw @s [{"text": "You are at maximum health to consume a heart manually, Please kill players to get more.", "color": "red"}]
scoreboard players set @s ls_usedHeart 0