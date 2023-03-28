function lifesteal:actions/increase
particle minecraft:totem_of_undying ~ ~2 ~ .3 1 .3 0 100
playsound minecraft:entity.player.levelup ambient @s
tellraw @s [{"text": "Yo you got a heart!", "color": "green"}]