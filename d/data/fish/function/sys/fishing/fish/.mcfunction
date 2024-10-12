#> fish:sys/fishing/fish

function fish:sys/fishing/fish/biomes

data modify storage fish: item set from entity @s SelectedItem
execute store result score @s fish_maxsiz run data get storage fish: item.components."minecraft:custom_data".max_siz
execute store result score @s fish_minsiz run data get storage fish: item.components."minecraft:custom_data".min_siz