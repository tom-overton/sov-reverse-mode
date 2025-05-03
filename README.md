# sov-reverse-mode

This repo can be built using [Magikoopa](https://github.com/RicBent/Magikoopa/tree/master) to create a mod for Fire Emblem Echoes: Shadows of Valentia such that enemies will always strike first when attacked, even on player phase. This is reminiscent of the ["Lunatic Reverse" difficulty mode](https://fireemblemwiki.org/wiki/Difficulty#Lunatic%E2%80%B2_Mode) of FE12. Unlike the Vantage+ skill present in Awakening (which accomplishes essentially the same thing), this mod does *not* add or modify skills for any enemy; this behavior is inherent to every enemy and is not tied to a particular skill.

This mod only supports the US version of Shadows of Valentia. Additionally, only the English language will properly display the "Vantage" text when the enemy strikes first. I have no plans to ever make this work with any other version of the game. It wouldn't be too hard to figure out the addresses for everything if you want to do it yourself, though.

## Installation

Download the [latest release](https://github.com/tom-overton/sov-reverse-mode/releases) and unzip the contents. What to do next depends on where you want to play the mod:

### For playing the mod on Citra, Lime3DS, or Azahar

- Right click your copy of Fire Emblem Echoes: Shadows of Valentia in Citra, Lime3DS, or Azahar and select "Open Mods Location"
- Copy `code.bps`, `exheader.bin`, and the `romfs` folder from the unzipped file to the folder that appears. Do ***not*** copy `code.ips` into that folder!

### For playing the mod on real hardware using Luma3DS
- From the root of your 3DS's SD card, navigate to `luma/titles/00040000001B4000`. If any of those folders do not exist, create them.
- Copy `code.ips`, `exheader.bin`, and the `romfs` folder from the unzipped file to the folder that appears. Do ***not*** copy `code.bps` into that folder!

## Building

- Download or build your own copy of [Magikoopa](https://github.com/RicBent/Magikoopa/tree/master) (I got mine from [this forum post](https://nsmbhd.net/thread/4631-magikoopa-code-patcher-for-3ds-games/), but I think it's quite out-of-date).
- Extract a copy of `code.bin` and `exheader.bin` from the US version of Shadows of Valentia (make sure `code.bin` is decompressed). Place these two files in the root folder of the repository.
- Open Magikoopa and select "File" -> "Set Working Directory". Set the working directory to be the root of the repository.
- Click the "Make and Insert" button.

A patched version of `code.bin` and `exheader.bin` will now be present in the root of the repository. You can use these as-is just by dropping them in the root title ID directory. However, if you use these files, you may notice a problem; when an enemy strikes first on player phase, a skill with no icon and no name will activate. To fix that, you'll need to modify skill #124 to give it a proper name and icon. You can either use [Paragon](https://github.com/thane98/paragon) to do this, or you can just use the `romfs` folder present in the release where I've already done that for you.
