/data modify storage pcd:workspace data.name set value $(name)
/data remove storage pcd:database data[?(@.name=$(name))]
/data modify storage pcd:database data append from storage pcd:workspace data