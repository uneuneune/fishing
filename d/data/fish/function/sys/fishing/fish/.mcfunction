#> fish:sys/fishing/fish

## バイオームごとにlootする
execute summon armor_stand run function fish:sys/fishing/fish/biomes

## サイズの計算

### 釣り竿補正の取得
data modify storage fish: item set from entity @s SelectedItem
execute store result score @s fish_maxsiz run data get storage fish: item.components."minecraft:custom_data".max_siz
execute store result score @s fish_minsiz run data get storage fish: item.components."minecraft:custom_data".min_siz
### 魚本体のサイズの取得
execute store result score # fish_maxsiz run data get storage fish: fish.components."minecraft:custom_data".maxsiz
execute store result score # fish_minsiz run data get storage fish: fish.components."minecraft:custom_data".minsiz
### 足す
scoreboard players operation # fish_maxsiz += @s fish_maxsiz
scoreboard players operation # fish_minsiz += @s fish_minsiz
### マイナスにならないようにする
execute if score # fish_maxsiz matches ..0 run scoreboard players set # fish_maxsiz 1
execute if score # fish_minsiz matches ..0 run scoreboard players set # fish_minsiz 1
### ストレージに持ってくる
execute store result storage fish: maxsiz int 1 run scoreboard players get # fish_maxsiz
execute store result storage fish: minsiz int 1 run scoreboard players get # fish_minsiz

item modify entity @n[type=armor_stand,tag=fishedfish] weapon fish:fishsiz