# Unfurnished housing shells

45 empty housing shells for FiveM: 15 low, 15 mid and 15 high tier. They are sealed props you teleport into, not MLO interiors.

## Install

1. Put this folder in your server's `resources` directory, named `unfurnished-shells`.
2. Add `ensure unfurnished-shells` to `server.cfg`.

## Use

- Model names are listed in `config.lua`, for example `shell_mid_house2`.
- Spawn a shell with `CreateObjectNoOffset` at an empty coordinate and freeze it.
- The shell origin is its floor corner. Place the player at origin + `entrance` from `config.lua`; the heading faces into the house.
- Other resources can read the list through the shared `Config.Shells` table by adding `shared_script '@unfurnished-shells/config.lua'` to their manifest.

## What is built in

Walls, floor and ceiling textures, skirting, coving, door and window frames, a fitted kitchen with collision, a tiled floor in small rooms and ceiling lights (on 24h). The front door and windows are solid panels, so players can only enter or leave by teleport.

## Testing

Add `setr ushell_test 1` to `server.cfg`, then use `/shelltest <name>` to spawn a shell and teleport inside, and `/shellexit` to return. Leave it off on a live server.
