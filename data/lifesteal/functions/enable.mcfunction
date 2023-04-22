execute if score @s ls_life_owed matches 20 run attribute @s minecraft:generic.max_health base set 40
execute if score @s ls_life_owed matches 18 run attribute @s minecraft:generic.max_health base set 38
execute if score @s ls_life_owed matches 16 run attribute @s minecraft:generic.max_health base set 36
execute if score @s ls_life_owed matches 14 run attribute @s minecraft:generic.max_health base set 34
execute if score @s ls_life_owed matches 12 run attribute @s minecraft:generic.max_health base set 32
execute if score @s ls_life_owed matches 10 run attribute @s minecraft:generic.max_health base set 30
execute if score @s ls_life_owed matches 8 run attribute @s minecraft:generic.max_health base set 28
execute if score @s ls_life_owed matches 6 run attribute @s minecraft:generic.max_health base set 26
execute if score @s ls_life_owed matches 4 run attribute @s minecraft:generic.max_health base set 24
execute if score @s ls_life_owed matches 2 run attribute @s minecraft:generic.max_health base set 22

execute if score @s ls_life_owed matches -2 run attribute @s minecraft:generic.max_health base set 18
execute if score @s ls_life_owed matches -4 run attribute @s minecraft:generic.max_health base set 16
execute if score @s ls_life_owed matches -6 run attribute @s minecraft:generic.max_health base set 14
execute if score @s ls_life_owed matches -8 run attribute @s minecraft:generic.max_health base set 12
execute if score @s ls_life_owed matches -10 run attribute @s minecraft:generic.max_health base set 10
execute if score @s ls_life_owed matches -12 run attribute @s minecraft:generic.max_health base set 8
execute if score @s ls_life_owed matches -14 run attribute @s minecraft:generic.max_health base set 6

execute if score @s ls_life_owed matches ..-1 run effect give @s poison 1 1
scoreboard players set @s ls_life_owed 0