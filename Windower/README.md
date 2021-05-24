## Existing Resources

These weren't that helpful, in my opinion. But including them here anyway for reference.

Documentation (although not that helpful): https://github.com/Windower/Lua/wiki

Existing Lua addons/scripts as examples: https://github.com/Windower/Lua

Resources: https://github.com/Windower/Resources

## Definitive Resources

I could not find a definitive source for the Windower Lua API, so here's what I've put together so far.

### Resources

Any [resources](https://github.com/Windower/Resources) can be included with `local resources = require('resources')`.

### Globals

Most elements are grabbed from the `windower.ffxi` global.

Below are some of the keys available on common commands:

`windower.ffxi.get_player()`

![get_player key names](https://i.imgur.com/yKjbhWu.png)

`windower.ffxi.get_bag_info()`

![get_bag_info key names](https://i.imgur.com/3g1FJr6.png)

`windower.ffxi.get_info()`

![get_info key names](https://i.imgur.com/LKyoknX.png)

`windower.ffxi.get_party()`

![get_party key names](https://i.imgur.com/C9vOotQ.png)

`windower.ffxi.get_key_items()`

The keys appear to be numbered ints. I'm not entirely sure. But the `value` contains the key item `ID`.

### Text output

```
-- <color> 0 to 255, as seen below for the various colors
-- <text> A string of text to display in the choosen color
--
windower.add_to_chat(<color>, <text>)
```

Colors:

![Image of all color codes](https://i.imgur.com/VZ3BgaA.png)
