execute as @a[scores={ls_death=1.., ls_maxHealth=..6}] run tellraw @s [{"text": "You are at minimum heart already, poor guy :(", "color": "red"}]
execute as @a[scores={ls_death=1.., ls_maxHealth=7..}, advancements={minecraft:story/shiny_gear=true, lifesteal:killable_advancement=true}] run tellraw @s [{"text": "Well that's awkard, You lost a heart :(", "color": "red"}]
execute as @a[scores={ls_death=1.., ls_maxHealth=7..}, advancements={minecraft:story/shiny_gear=true, lifesteal:killable_advancement=true}] run function lifesteal:actions/decrease
execute as @a[scores={ls_death=1.., ls_maxHealth=7..}, advancements={minecraft:story/shiny_gear=true, lifesteal:killable_advancement=true}] run effect give @s minecraft:instant_health 1

execute as @a[scores={ls_death=1.., ls_maxHealth=7..}, advancements={minecraft:story/shiny_gear=false}] run tellraw @s [{"text": "On the bright side you did not lose a heart :)", "color": "blue"}]
