execute if score @s ls_maxHealth matches 40 run scoreboard players set @s ls_life_owed 20
execute if score @s ls_maxHealth matches 38 run scoreboard players set @s ls_life_owed 18
execute if score @s ls_maxHealth matches 36 run scoreboard players set @s ls_life_owed 16
execute if score @s ls_maxHealth matches 34 run scoreboard players set @s ls_life_owed 14
execute if score @s ls_maxHealth matches 32 run scoreboard players set @s ls_life_owed 12
execute if score @s ls_maxHealth matches 30 run scoreboard players set @s ls_life_owed 10
execute if score @s ls_maxHealth matches 28 run scoreboard players set @s ls_life_owed 8
execute if score @s ls_maxHealth matches 26 run scoreboard players set @s ls_life_owed 6
execute if score @s ls_maxHealth matches 24 run scoreboard players set @s ls_life_owed 4
execute if score @s ls_maxHealth matches 22 run scoreboard players set @s ls_life_owed 2

execute if score @s ls_maxHealth matches 18 run scoreboard players set @s ls_life_owed -2
execute if score @s ls_maxHealth matches 16 run scoreboard players set @s ls_life_owed -4
execute if score @s ls_maxHealth matches 14 run scoreboard players set @s ls_life_owed -6
execute if score @s ls_maxHealth matches 12 run scoreboard players set @s ls_life_owed -8
execute if score @s ls_maxHealth matches 10 run scoreboard players set @s ls_life_owed -10
execute if score @s ls_maxHealth matches 8 run scoreboard players set @s ls_life_owed -12
execute if score @s ls_maxHealth matches 6 run scoreboard players set @s ls_life_owed -14

attribute @s minecraft:generic.max_health base set 20
execute if score @s ls_maxHealth matches 21.. run effect give @s poison 1 1
execute if score @s ls_maxHealth matches ..19 run effect give @s instant_health 1 10