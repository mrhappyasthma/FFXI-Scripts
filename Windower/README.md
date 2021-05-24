I could not find a definitive source for the Windower Lua API, so here's what I've put together so far.

Most elements are grabbed from the `windower.ffxi` global.

Any resources can be included with `local resources = require('resources')`.

Below are some of the keys available on common commands:

`windower.ffxi.get_player()`

![get_player key names](https://i.imgur.com/gUaWal4.png)

`windower.ffxi.get_bag_info()`

![get_bag_info key names](https://i.imgur.com/3g1FJr6.png)

`windower.ffxi.get_info()`

![get_info key names](https://i.imgur.com/LKyoknX.png)

`windower.ffxi.get_party()`

![get_party key names](https://i.imgur.com/C9vOotQ.png)

`windower.ffxi.get_key_items()`

The keys appear to be numbered ints. I'm not entirely sure. But the `value` contains the key item `ID`.
