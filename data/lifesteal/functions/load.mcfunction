tellraw @a [{"text":"LifeSteal Datapack - by GoodGuyMahdi","bold":true,"color":"red"}]

scoreboard objectives add ls_health health {"text":"❤","color":"red"}
scoreboard objectives modify ls_health displayname {"text":"❤","color":"red"}
scoreboard objectives setdisplay belowName ls_health

scoreboard objectives add ls_maxHealth dummy
scoreboard objectives add ls_killedPlayer playerKillCount
scoreboard objectives add ls_death minecraft.killed_by:player
scoreboard objectives add ls_sinceDeath minecraft.custom:minecraft.time_since_death