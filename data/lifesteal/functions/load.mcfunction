tellraw @a [{"text":"LifeSteal Datapack - by GoodGuyMahdi","bold":true,"color":"red"}]

scoreboard objectives add ls_health health {"text":"❤","color":"red"}
scoreboard objectives modify ls_health displayname {"text":"❤","color":"red"}
scoreboard objectives setdisplay belowName ls_health

scoreboard objectives add ls_firstJoin dummy
scoreboard objectives add ls_killedPlayer playerKillCount
scoreboard objectives add ls_death deathCount

# config
# how much is 1 heart
scoreboard objectives add HEART_COUNT dummy

scoreboard players set #DELTA HEART_COUNT 2

function nnhealth:setup