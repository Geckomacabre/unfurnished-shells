# Unfurnished housing shells
15 empty shells: 5 low, 5 mid, 5 high tier. Spawn as props (CreateObject / CreateObjectNoOffset) at an empty coordinate, then place the player at origin + entrance offset from `config.lua`.
- `stream/` = legacy (gen8) ydr. `stream_gen9/` = enhanced-build ydr; use instead of `stream/` on gen9 builds.
- Shells are fully sealed: the front door and all windows are solid panels with collision, so players can only get in or out by teleport. Textures (walls, floor, ceiling, door, windows) are embedded in each ydr; sources are in `reference/textures`, and `reference/shells.blend` is the editable Sollumz scene. Built in: skirting, coving, door/window frames, a fitted kitchen (with collision), a tiled floor in small rooms, and ceiling lights embedded in each ydr (on 24h).
- Origin is the floor corner; the front door is on the y=0 wall.
- The `reference/unfurnished_shells.ytyp.xml` is optional CodeWalker/Sollumz-importable reference; FiveM streams ydr by model name directly.
