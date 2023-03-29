execute if score @s ls_maxHealth matches 7.. run function lifesteal:actions/decrease
execute if score @s ls_maxHealth matches 7.. run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Heart","color":"red","bold":true}',Lore:['{"text":"Life is short or is it?","color":"dark_purple","italic":true}']},CustomModelData:69420,Enchantments:[{}]} 1
execute if score @s ls_maxHealth matches 7.. run tellraw @s [{"text": "You extracted one life", "color": "green"}]
execute if score @s ls_maxHealth matches 7.. run effect give @s poison 1 1

execute if score @s ls_maxHealth matches ..6 run tellraw @s [{"text": "You cannot extract any life!", "color": "red"}]

scoreboard players set @s ls_extlf 0