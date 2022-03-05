# Hard link and symbolic link

## Hard link

file1 -> file1 inode -> file1 entity
file1(hard link) -> file inode

you can access file1 from hard-link inode after `rm file1`.

## Symbolic link

file1 -> file1 inode -> file1
file1(symbolic) -> file1(symbolic) inode -> file1 -> file1 inode -> file1 entity

you can't access file1 from symbolic link after `rm file1`.

## Differences

|hard | symbolic|
|:-|:-|
|means an inode to the entity|means an inode to the link to file|
|After `rm file1`: you can access| After `rm file1` you can't access|
|You can't create any link to other file-system.|You can create a link to other file-system|
|You can't create any link to directory|You can create a link to directory|
|be used for backup systems too.| be used for easy, quickly link  |


