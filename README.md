# mhws-equipment-exporter - Yet Another Quick Menu
*equipment-exporter* is a simple quick-access menu for Monster Hunter: Wilds.

# Why
* Other menu mods may not expose the ability to eat straight from the Grand Hub's
  canteen, or use the smelting foundry
* Other menu mods may not stop you from using them outside of safe areas
* I'm currently most familiar with LUA scripting rather than editing game resources
* Loading into the Oilwell Basin just to smelt oricalcite is extremely lame

# Use if:
* You want to access facilities from one menu, rather than needing to load into other
  completely different areas to use them
* You want a menu that disables itself outside of safe areas, for balance reasons
* You don't mind built-in REFramework menus instead of the in-game menu

# Known Issues & Limitations
* The menu stays disabled as you load into the game, thinking you're not in a safe area
* The tent and smithy crafting menus lead to blank menus, so I excluded them
  * I can only assume they're strongly tied to the physical areas where they occur and
    the animations they involve, since the crafting menu works when using it close to
    the smithy area
* The canteen meals work anywhere, but eating them outside of the Grand Hub may forcibly
  move the player outside of the map. Don't worry, players will automatically be moved
  to a safe spot after about ten seconds if they fall too far out of the map
