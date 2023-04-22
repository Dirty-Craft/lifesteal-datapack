advancement revoke @s only lifesteal:lifestealer_advancement
execute if score @s ls_maxHealth matches 40.. run tellraw @s [{"text": "You have too many hearts boi. Slow down", "color": "red"}]
execute as @s[advancements={lifesteal:disabled_advancement=false}] if score @s ls_maxHealth matches ..39 at @s run function lifesteal:life_increase