execute if score @s ls_maxHealth matches ..38 run function lifesteal:life_increase
execute if score @s ls_maxHealth matches ..38 run clear @s warped_fungus_on_a_stick{CustomModelData: 69421} 1

execute if score @s ls_maxHealth matches 40.. run tellraw @s [{"text": "You are at maximum health already. No mroe.", "color": "red"}]
scoreboard players set @s ls_usedHeart 0