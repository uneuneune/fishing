# >fish:player

## ヴィユーポイント取得
scoreboard players operation @s viewpoi_bef = @s viewpoi_now
execute store result score @s viewpoi_now run data get entity @s Rotation[0]


execute if score @s viewpoi_bef < @s viewpoi_now run function fish:sys/viewpoi/right
execute if score @s viewpoi_bef > @s viewpoi_now run function fish:sys/viewpoi/left